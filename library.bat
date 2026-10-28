@echo off
setlocal EnableExtensions
cd /d "%~dp0"

:MENU
cls
echo ================================================================
echo                    ANDROID PRACTICAL LIBRARY
echo ================================================================
echo.
echo MODULE 1 - ANDROID FUNDAMENTALS ^& UI DESIGN
echo M1-01  Hello World app, Android Studio, AVD and execution
echo M1-02  Programming resources: colors, themes, strings, dimens and drawables
echo M1-03  Activity lifecycle methods and Logcat analysis
echo M1-04  Create and integrate a Fragment; Fragment lifecycle
echo M1-05  Fragment-based navigation between multiple screens
echo M1-06  Communication between Activity and Fragment
echo M1-07  LinearLayout with horizontal and vertical orientation
echo M1-08  RelativeLayout to align UI components dynamically
echo M1-09  TableLayout login or registration form
echo M1-10  ScrollView for long scrollable content
echo M1-11  AbsoluteLayout with fixed positioning
echo M1-12  FrameLayout to overlay UI elements
echo M1-13  ListView, ArrayAdapter and item click handling
echo M1-14  GridView with Custom Adapter
echo M1-15  RecyclerView as an alternative to ListView
echo.
echo MODULE 2 - ANDROID SYSTEM COMPONENTS ^& DATA HANDLING
echo M2-01  AppBar Toolbar and Options Menu
echo M2-02  AlertDialog and custom DialogFragment
echo M2-03  Contextual menus and popup menus
echo M2-04  Explicit and Implicit Intents
echo M2-05  Event handling with listeners such as OnClick and OnLongClick
echo M2-06  Adapters to populate Spinner or ListView dynamically
echo M2-07  Started and Bound Services
echo M2-08  Notifications using Notification Manager
echo M2-09  Static and Dynamic Broadcast Receivers
echo M2-10  SQLite database CRUD operations
echo M2-11  SQLite integration with ListView or RecyclerView
echo M2-12  Fetch and parse JSON data from the web
echo M2-13  Threads and Handlers for background processing
echo M2-14  Media APIs and Telephone APIs
echo M2-15  Runtime Permissions and AndroidManifest.xml security handling
echo.
echo Enter an ID such as M1-01 or M2-15, or Q to quit.
set "choice="
set /p "choice=Selection: "
if /I "%choice%"=="Q" exit /b

set "module=%choice:~0,2%"
set "number=%choice:~3,2%"
if not "%choice:~2,1%"=="-" goto INVALID
if /I not "%module%"=="M1" if /I not "%module%"=="M2" goto INVALID
for /f "delims=0123456789" %%A in ("%number%") do goto INVALID
set /a n=1%number%-100 2>nul
if %n% LSS 1 goto INVALID
if %n% GTR 15 goto INVALID
if /I "%module%"=="M1" set "filename=Module_1_Practical_%number%.pdf"
if /I "%module%"=="M2" set "filename=Module_2_Practical_%number%.pdf"
start "" msedge.exe "https://github.com/TanjiroKamado63/pikachu/blob/main/%filename%"
goto MENU

:INVALID
echo.
echo Invalid selection. Use M1-01 to M1-15 or M2-01 to M2-15.
pause
goto MENU
