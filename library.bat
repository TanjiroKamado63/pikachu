@echo off
setlocal EnableExtensions
title Android Programming Practical Library
:HOME
cls
echo ===============================================================================
echo                       ANDROID PROGRAMMING PRACTICAL LIBRARY
echo ===============================================================================
echo.
echo MODULE 1 - ANDROID FUNDAMENTALS ^& UI DESIGN
echo -------------------------------------------------------------------------------
echo M1-01  Hello World; project creation, Android Studio, components, AVD and run.
echo M1-02  Programming resources: colors, themes, strings, dimens and drawables.
echo M1-03  Activity lifecycle methods and execution analysis using Logcat.
echo M1-04  Create/integrate a Fragment and demonstrate Fragment lifecycle methods.
echo M1-05  Fragment-based UI navigation between multiple screens.
echo M1-06  Communication between Activity and Fragment.
echo M1-07  LinearLayout (horizontal and vertical) for structured UI.
echo M1-08  RelativeLayout to align UI components dynamically.
echo M1-09  TableLayout for a structured Login/Registration Form.
echo M1-10  ScrollView to display long scrollable content.
echo M1-11  AbsoluteLayout demonstrating fixed positioning.
echo M1-12  FrameLayout to overlay UI elements.
echo M1-13  ListView with ArrayAdapter and item-click handling.
echo M1-14  GridView with Custom Adapter.
echo M1-15  RecyclerView as a modern alternative to ListView.
echo.
echo MODULE 2 - ANDROID SYSTEM COMPONENTS ^& DATA HANDLING
echo -------------------------------------------------------------------------------
echo M2-01  AppBar (Toolbar) and Options Menu.
echo M2-02  AlertDialog and custom DialogFragment.
echo M2-03  Contextual menus and popup menus.
echo M2-04  Explicit and Implicit Intents.
echo M2-05  Event handling using listeners (OnClick, OnLongClick, etc.).
echo M2-06  Adapters to populate Spinner or ListView dynamically.
echo M2-07  Started and Bound Services.
echo M2-08  Notifications using Notification Manager.
echo M2-09  Static and Dynamic Broadcast Receivers.
echo M2-10  SQLite database CRUD operations.
echo M2-11  SQLite integrated with ListView or RecyclerView.
echo M2-12  Fetch and parse JSON data from the web.
echo M2-13  Threads and Handlers for background processing.
echo M2-14  Media APIs and Telephone APIs.
echo M2-15  Runtime Permissions and AndroidManifest.xml security handling.
echo.
echo -------------------------------------------------------------------------------
echo Enter a practical ID (example: M1-01 or M2-15), or Q to quit.
set "CHOICE="
set /p "CHOICE=Your choice: "
if /i "%CHOICE%"=="Q" goto :EOF
set "FILE="
set "LABEL="
for %%N in (01 02 03 04 05 06 07 08 09 10 11 12 13 14 15) do (
    if /i "%CHOICE%"=="M1-%%N" set "FILE=Module_1_Practical_%%N.pdf"
    if /i "%CHOICE%"=="M2-%%N" set "FILE=Module_2_Practical_%%N.pdf"
)
if not defined FILE (
    echo.
    echo Invalid practical ID. Please use M1-01 through M1-15 or M2-01 through M2-15.
    pause
    goto HOME
)
if exist "%~dp0%FILE%" goto OPENFILE
echo.
echo.
echo PDF not found in this folder. Keep the practical PDFs beside library.bat.
pause
goto HOME
:OPENFILE
echo Opening %FILE% ...
start "" "%~dp0%FILE%"
echo.
echo Press any key to return to the practical library.
pause >nul
goto HOME
