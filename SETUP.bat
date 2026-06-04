@echo off
echo === Grand Hotel - Setup ===
echo.

echo [1/3] Creating database...
sqlcmd -S "(localdb)\MSSQLLocalDB" -i "%~dp0Database\01_CreateSchema.sql" -b
if errorlevel 1 goto error

echo [2/3] Seeding rooms and guests...
sqlcmd -S "(localdb)\MSSQLLocalDB" -i "%~dp0Database\02_SeedData.sql" -b
sqlcmd -S "(localdb)\MSSQLLocalDB" -d HotelManagementDB -Q "DELETE FROM [User];" -b

echo [3/3] Building application...
cd /d "%~dp0HotelManagement"
dotnet restore
dotnet build
if errorlevel 1 goto error

echo.
echo === Setup complete ===
echo Run: RUN.bat
echo Login: admin@grandhotel.com / Admin123!
pause
exit /b 0

:error
echo Setup failed.
pause
exit /b 1
