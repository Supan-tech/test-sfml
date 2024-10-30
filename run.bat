@echo off
rem Navigate to the project directory if needed
cd /d %~dp0

rem Compile the code
g++ -o main ./src/*.cpp -I"./external" -L"./lib" -lsfml-graphics-s-d -lsfml-window-s-d -lsfml-system-s-d -lfreetype -lwinmm -lopengl32 -lgdi32 -D SFML_STATIC

rem Check if the compilation was successful
if %errorlevel% neq 0 (
    echo Compilation failed.
    pause
    exit /b %errorlevel%
)

echo Compilation successful.

rem Run the compiled program
main

pause
