@echo off
cd /d "%~dp0"
echo AI OFFICE local server starting at http://localhost:8787/ai_office_3d.html
where py >nul 2>nul && ( start http://localhost:8787/ai_office_3d.html & py -m http.server 8787 & goto :eof )
where python >nul 2>nul && ( start http://localhost:8787/ai_office_3d.html & python -m http.server 8787 & goto :eof )
where npx >nul 2>nul && ( start http://localhost:8787/ai_office_3d.html & npx -y http-server -p 8787 & goto :eof )
echo Python or Node.js is required. Just double-click ai_office_3d.html instead.
pause
