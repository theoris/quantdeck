<# :
@echo off
setlocal EnableExtensions
title PC Remote Server
cd /d "%~dp0"

:: 1. ตรวจสอบและขอสิทธิ์ Administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -FilePath '%~f0' -Verb RunAs";
    exit /b
)

:: 2. ปลดบล็อกพอร์ต 8000 บน Firewall อัตโนมัติ
netsh advfirewall firewall show rule name="PC_Remote_8000" >nul 2>&1
if %errorlevel% neq 0 (
    netsh advfirewall firewall add rule name="PC_Remote_8000" dir=in action=allow protocol=TCP localport=8000 >nul 2>&1
)

:: 3. ทำสำเนาไฟล์เป็น .ps1 พร้อมแนบ UTF-8 BOM
set "TEMP_PS=%TEMP%\pc_remote_app.ps1"
powershell -NoProfile -ExecutionPolicy Bypass -Command "[System.IO.File]::WriteAllText('%TEMP_PS%', [System.IO.File]::ReadAllText('%~f0', [System.Text.Encoding]::UTF8), [System.Text.Encoding]::UTF8);"
powershell -NoProfile -ExecutionPolicy Bypass -File "%TEMP_PS%"
if exist "%TEMP_PS%" del "%TEMP_PS%" >nul 2>&1

echo.
echo ==========================================
echo  PC Remote Server stopped.
echo ==========================================
pause
exit /b
#>

try {
    Add-Type -AssemblyName System.Windows.Forms;

    if (-not ([System.Management.Automation.PSTypeName]'Win32').Type) {
Add-Type @"
using System;
using System.Runtime.InteropServices;
using System.Threading;

public class Win32 {
    [DllImport("user32.dll")]
    public static extern int SendMessage(int hWnd, int hMsg, int wParam, int lParam);

    [DllImport("user32.dll")]
    public static extern void mouse_event(uint dwFlags, int dx, int dy, uint dwData, UIntPtr dwExtraInfo);

    [DllImport("user32.dll")]
    public static extern void SwitchToThisWindow(IntPtr hWnd, bool fAltTab);

    [DllImport("user32.dll")]
    public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);

    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);

    [DllImport("user32.dll")]
    public static extern IntPtr LoadKeyboardLayout(string pwszKLID, uint Flags);

    [DllImport("user32.dll")]
    public static extern bool PostMessage(IntPtr hWnd, uint Msg, IntPtr wParam, IntPtr lParam);

    public static void FocusAndSetEnglish(IntPtr hWnd) {
        ShowWindow(hWnd, 9);
        SwitchToThisWindow(hWnd, true);
        Thread.Sleep(150);

        IntPtr hklEng = LoadKeyboardLayout("00000409", 1);
        PostMessage(hWnd, 0x0050, (IntPtr)1, hklEng);
        Thread.Sleep(80);
    }

    public static void PressHardwareKey(byte vk, byte scan) {
        keybd_event(vk, scan, 0, UIntPtr.Zero);
        Thread.Sleep(60);
        keybd_event(vk, scan, 2, UIntPtr.Zero);
    }
}
"@;
    };

    $ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notlike "*Loopback*" -and $_.IPAddress -like "192.168.*" }).IPAddress | Select-Object -First 1;

    $listener = New-Object System.Net.HttpListener;
    $listener.Prefixes.Add("http://+:8000/");
    $listener.Start();

    Write-Host "==========================================" -ForegroundColor Cyan;
    Write-Host " PC Remote Server is RUNNING on Port 8000" -ForegroundColor Green;
    Write-Host " Access via: http://$($env:COMPUTERNAME).local:8000" -ForegroundColor Yellow;
    if ($ip) {
        Write-Host " Access via: http://$($ip):8000" -ForegroundColor Yellow;
    };
    Write-Host "==========================================" -ForegroundColor Cyan;

    $html = @'
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>PC Remote - QuantDeck</title>
    <style>
        * { box-sizing: border-box; -webkit-tap-highlight-color: transparent; }
        body { 
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; 
            background: #090d16; 
            color: #f8fafc; 
            padding: 16px; 
            display: flex; 
            flex-direction: column; 
            align-items: center; 
            margin: 0; 
            min-height: 100vh;
        }

        /* กล่องเครดิต QUANTDECK สไตล์ Cyberpunk / Neon */
        .brand-card {
            width: 100%;
            max-width: 340px;
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 10px 14px;
            background: linear-gradient(135deg, rgba(15, 23, 42, 0.95), rgba(8, 20, 36, 0.95));
            border: 1px solid rgba(0, 240, 255, 0.35);
            border-radius: 16px;
            text-decoration: none;
            color: inherit;
            margin-bottom: 8px;
            box-shadow: 0 4px 20px rgba(0, 240, 255, 0.12), inset 0 0 12px rgba(34, 197, 94, 0.08);
            transition: all 0.2s ease;
        }
        .brand-card:active {
            transform: scale(0.98);
            border-color: #00f0ff;
            box-shadow: 0 4px 24px rgba(0, 240, 255, 0.3);
        }
        .brand-logo {
            width: 52px;
            height: 52px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #00f0ff;
            box-shadow: 0 0 10px rgba(0, 240, 255, 0.5);
            flex-shrink: 0;
            background: #000;
        }
        .brand-info {
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }
        .brand-name {
            font-size: 1.1rem;
            font-weight: 800;
            letter-spacing: 0.06em;
            background: linear-gradient(90deg, #00f0ff 0%, #22c55e 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin: 0;
            line-height: 1.2;
        }
        .brand-sub {
            font-size: 0.75rem;
            color: #94a3b8;
            margin-top: 3px;
        }
        .brand-btn {
            background: #ef4444;
            color: #fff;
            font-size: 0.7rem;
            font-weight: 700;
            padding: 6px 10px;
            border-radius: 20px;
            letter-spacing: 0.04em;
            box-shadow: 0 2px 8px rgba(239, 68, 68, 0.4);
            white-space: nowrap;
        }

        h2 { 
            font-size: 0.88rem; 
            color: #64748b; 
            margin: 14px 0 8px 0; 
            width: 100%; 
            max-width: 340px; 
            text-transform: uppercase; 
            letter-spacing: 0.06em; 
        }
        .grid { 
            display: grid; 
            grid-template-columns: repeat(3, 1fr); 
            gap: 10px; 
            width: 100%; 
            max-width: 340px; 
            margin-bottom: 6px; 
        }
        button, select { 
            font-family: inherit;
            border-radius: 12px; 
            border: 1px solid #1e293b; 
            background: #111827; 
            color: #f8fafc; 
            cursor: pointer; 
        }
        button { 
            padding: 14px 6px; 
            font-size: 0.85rem; 
            display: flex; 
            flex-direction: column; 
            align-items: center; 
            justify-content: center; 
            gap: 6px; 
            transition: all 0.1s ease; 
        }
        button:active { background: #0284c7; transform: scale(0.97); }
        .icon { font-size: 1.4rem; }
        .col-2 { grid-column: span 2; }
        .col-3 { grid-column: span 3; }
        .warn { background: #78350f; border-color: #b45309; }
        .warn:active { background: #f59e0b; }
        .success { background: #064e3b; border-color: #047857; }
        .success:active { background: #10b981; }
        .danger { background: #450a0a; border-color: #991b1b; }
        .danger:active { background: #ef4444; }

        .timer-panel {
            display: flex;
            gap: 8px;
            width: 100%;
            max-width: 340px;
            margin-top: 4px;
            margin-bottom: 18px;
        }
        select {
            flex: 1.2;
            padding: 12px;
            font-size: 0.9rem;
            text-align: center;
        }
        .timer-btn {
            flex: 1;
            padding: 12px 8px;
            background: #0284c7;
            border-color: #38bdf8;
            font-weight: 600;
        }
        .cancel-btn {
            flex: 0.8;
            padding: 12px 8px;
        }
        .exit-btn {
            width: 100%;
            max-width: 340px;
            padding: 14px;
            margin-top: 6px;
            background: #18181b;
            border: 1px solid #3f3f46;
            color: #a1a1aa;
            font-weight: 500;
        }
        .exit-btn:active {
            background: #dc2626;
            border-color: #ef4444;
            color: #fff;
        }
    </style>
</head>
<body>

    <!-- ดึงภาพโลโก้ตรงจาก Google Content Server -->
    <a href="https://www.youtube.com/@QuantDeck" target="_blank" class="brand-card">
        <img src="https://yt3.googleusercontent.com/YrZ1BJJnP0JcehrtC0H86ems9XWO0a05HPl4H1pAT3T-2OO7SaqtJWb45NppdVFDhMeYaPLG9A=s120-c-k-c0x00ffffff-no-rj" alt="QuantDeck Logo" class="brand-logo" onerror="this.style.display='none'">
        <div class="brand-info">
            <span class="brand-name">QUANTDECK</span>
            <span class="brand-sub">youtube.com/@QuantDeck</span>
        </div>
        <span class="brand-btn">▶ VIEW</span>
    </a>

    <h2>ควบคุมเสียง & มีเดีย</h2>
    <div class="grid">
        <button class="col-3" onclick="act('/media/playpause')"><span class="icon">⏯</span>เล่น / หยุดเพลง</button>
        <button onclick="act('/volume/down')"><span class="icon">🔉</span>ลดเสียง</button>
        <button class="danger" onclick="act('/volume/mute')"><span class="icon">🔇</span>ปิดเสียง</button>
        <button onclick="act('/volume/up')"><span class="icon">🔊</span>เพิ่มเสียง</button>
    </div>

    <h2>ควบคุม YouTube & เบราว์เซอร์</h2>
    <div class="grid">
        <button onclick="act('/yt/seek-back')"><span class="icon">⏪</span>ถอย 10 วิ (J)</button>
        <button onclick="act('/fullscreen-yt')"><span class="icon">⛶</span>เต็มจอคลิป (F)</button>
        <button onclick="act('/yt/seek-forward')"><span class="icon">⏩</span>ข้าม 10 วิ (L)</button>
        <button class="col-2" onclick="act('/fullscreen-browser')"><span class="icon">🖥</span>เต็มจอเบราว์เซอร์ (F11)</button>
        <button class="danger" onclick="act('/browser/close-tab')"><span class="icon">❌</span>ปิดแท็บ (Ctrl+W)</button>
    </div>

    <h2>หน้าจอ & ล็อกเครื่อง</h2>
    <div class="grid">
        <button class="warn" onclick="act('/screenoff')"><span class="icon">🌙</span>ปิดหน้าจอ</button>
        <button class="success" onclick="act('/screenon')"><span class="icon">🔆</span>ปลุกจอ</button>
        <button onclick="act('/system/lock')"><span class="icon">🔒</span>ล็อกเครื่อง</button>
    </div>

    <h2>ตั้งเวลาปิดเครื่อง</h2>
    <div class="timer-panel">
        <select id="timerMinutes">
            <option value="10">10 นาที</option>
            <option value="20">20 นาที</option>
            <option value="30" selected>30 นาที</option>
            <option value="45">45 นาที</option>
            <option value="60">1 ชม. (60 นาที)</option>
            <option value="90">1.5 ชม. (90 นาที)</option>
            <option value="120">2 ชม. (120 นาที)</option>
        </select>
        <button class="timer-btn" onclick="sendTimer()">⏳ ตั้งเวลา</button>
        <button class="danger cancel-btn" onclick="act('/power/cancel')">✖ ยกเลิก</button>
    </div>

    <button class="exit-btn" onclick="exitServer()">
        🛑 ปิดโปรแกรมรีโมท (Exit Server)
    </button>

    <script>
        function act(endpoint) {
            fetch(endpoint);
            if (navigator.vibrate) navigator.vibrate(35);
        }
        function sendTimer() {
            const min = document.getElementById('timerMinutes').value;
            fetch('/power/timer/' + min);
            if (navigator.vibrate) navigator.vibrate([40, 60, 40]);
            alert('ตั้งเวลาปิดเครื่องในอีก ' + min + ' นาทีเรียบร้อย');
        }
        function exitServer() {
            if (confirm('ต้องการปิดโปรแกรมรีโมทบนคอมพิวเตอร์ใช่หรือไม่?')) {
                fetch('/server/exit');
                if (navigator.vibrate) navigator.vibrate(60);
                document.body.innerHTML = '<div style="display:flex;flex-direction:column;align-items:center;justify-content:center;height:80vh;text-align:center;color:#94a3b8;"><div style="font-size:3rem;margin-bottom:12px;">🛑</div><h2 style="color:#f8fafc;margin:0 0 8px 0;text-align:center;">ปิดรีโมทเซิร์ฟเวอร์แล้ว</h2><p style="margin:0;font-size:0.9rem;">หน้าต่างโปรแกรมบน PC ถูกปิดตัวเรียบร้อยแล้ว</p></div>';
            }
        }
    </script>
</body>
</html>
'@;

    function Switch-To-Browser {
        $browser = Get-Process chrome, msedge, brave, firefox, opera -ErrorAction SilentlyContinue | 
                   Where-Object { $_.MainWindowHandle -ne [IntPtr]::Zero -and$_.MainWindowTitle.Length -gt 0 } | 
                   Select-Object -First 1;
        if ($browser) {
            [Win32]::FocusAndSetEnglish($browser.MainWindowHandle);
            return $true;
        };
        return $false;
    };

    while ($listener.IsListening) {
        $context =$listener.GetContext();
        $url =$context.Request.Url.AbsolutePath;
        $response =$context.Response;
        $response.KeepAlive =$false;
        $response.Headers.Add("Cache-Control", "no-store, no-cache, must-revalidate");

        if ($url -eq "/favicon.ico") {
            $response.StatusCode = 204;
            $response.Close();
            continue;
        };

        Write-Host "[$(Get-Date -Format 'HH:mm:ss')] Action:$url" -ForegroundColor Gray;

        switch -Regex ($url) {
            "^/$" {
                $buffer = [System.Text.Encoding]::UTF8.GetBytes($html);$response.ContentType = "text/html; charset=utf-8";
                $response.ContentEncoding = [System.Text.Encoding]::UTF8;
                $response.ContentLength64 =$buffer.Length;
                $response.OutputStream.Write($buffer, 0, $buffer.Length);$response.OutputStream.Close();
            }
            "^/media/playpause$" {
                $wsh = New-Object -ComObject WScript.Shell;
                $wsh.SendKeys([char]179);
            }
            "^/volume/up$" {
                $wsh = New-Object -ComObject WScript.Shell;
                $wsh.SendKeys([char]175);
            }
            "^/volume/down$" {
                $wsh = New-Object -ComObject WScript.Shell;
                $wsh.SendKeys([char]174);
            }
            "^/volume/mute$" {
                $wsh = New-Object -ComObject WScript.Shell;
                $wsh.SendKeys([char]173);
            }
            "^/fullscreen-yt$" {
                if (Switch-To-Browser) {
                    [Win32]::PressHardwareKey(0x1B, 0x01);
                    Start-Sleep -Milliseconds 60;
                    [Win32]::PressHardwareKey(0x46, 0x21);
                };
            }
            "^/fullscreen-browser$" {
                if (Switch-To-Browser) {
                    [Win32]::PressHardwareKey(0x7A, 0x57);
                };
            }
            "^/yt/seek-back$" {
                if (Switch-To-Browser) {
                    [Win32]::PressHardwareKey(0x4A, 0x24);
                };
            }
            "^/yt/seek-forward$" {
                if (Switch-To-Browser) {
                    [Win32]::PressHardwareKey(0x4C, 0x26);
                };
            }
            "^/browser/close-tab$" {
                if (Switch-To-Browser) {
                    $wsh = New-Object -ComObject WScript.Shell;
                    $wsh.SendKeys("^w");
                };
            }
            "^/screenoff$" {
                [Win32]::SendMessage(-1, 0x0112, 0xF170, 2) | Out-Null;
            }
            "^/screenon$" {
                [Win32]::SendMessage(-1, 0x0112, 0xF170, -1) | Out-Null;
                [Win32]::mouse_event(0x0001, 2, 2, 0, [UIntPtr]::Zero);
                [Win32]::mouse_event(0x0001, -2, -2, 0, [UIntPtr]::Zero);
            }
            "^/system/lock$" {
                rundll32.exe user32.dll,LockWorkStation;
            }
            "^/power/timer/(\d+)$" {
                $min = [int]$matches[1];
                $sec =$min * 60;
                Stop-Process -Name "shutdown" -ErrorAction SilentlyContinue;
                Start-Process "shutdown.exe" -ArgumentList "/s /t $sec /c `"PC Remote: Shutdown in $min min`"";
            }
            "^/power/cancel$" {
                Start-Process "shutdown.exe" -ArgumentList "/a" -ErrorAction SilentlyContinue;
            }
            "^/server/exit$" {
                $buffer = [System.Text.Encoding]::UTF8.GetBytes("Server Closed");
                $response.ContentLength64 =$buffer.Length;
                $response.OutputStream.Write($buffer, 0, $buffer.Length);$response.OutputStream.Close();
                $response.Close();$listener.Stop();
                [System.Environment]::Exit(0);
            }
        };
        
        $response.Close();
    };
}
catch {
    Write-Host "";
    Write-Host "================= ERROR LOG =================" -ForegroundColor Red;
    Write-Host $_.Exception.ToString() -ForegroundColor Yellow;
    Write-Host "=============================================" -ForegroundColor Red;
    Write-Host "An error occurred! Window kept open for inspection." -ForegroundColor Cyan;
    Read-Host "Press Enter to exit...";
}
