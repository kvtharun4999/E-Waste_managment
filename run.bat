@echo off
title E-Waste Facility Locator - Dual Launcher
echo ========================================================
echo  E-Waste Facility Locator - Sustainable Disposal System
echo  Design Thinking Laboratory Project
echo ========================================================
echo.
echo Starting Backend API and Socket.IO Server on Port 5000...
start "E-Waste Backend (Port 5000)" cmd /k "cd server && npm start"
echo.
echo Starting Frontend Client on Port 5173...
start "E-Waste Frontend (Port 5173)" cmd /k "cd client && npm run dev"
echo.
echo ========================================================
echo  Both servers are launching!
echo  Backend:  http://localhost:5000/api
echo  Frontend: http://localhost:5173
echo ========================================================
timeout /t 3 >nul
start http://localhost:5173
