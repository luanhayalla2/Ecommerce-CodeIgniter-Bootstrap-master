@echo off
:: Change to the project root directory
cd /d "C:\Users\aluno.SENACLAB\Downloads\Ecommerce-CodeIgniter-Bootstrap-master\Ecommerce-CodeIgniter-Bootstrap-master"

:: Start the built‑in PHP development server on port 8000
php -S localhost:8000 -t .

:: Keep the window open after the server exits
pause
