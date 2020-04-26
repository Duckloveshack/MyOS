@echo off
set version=2.2.0
set TestSDK=Software
set TestSDK2=DevelopmentKit
set Hint=The Password is %PassReal%
set /a mp3pro=0
set /a NowPlaying=0
set /a U=0
set /a Choice=1
set /a Sign=0
set /a App=0
set /a W=0
set /a N=0
set /a open=0
set /a delete=0
set /a Color=0
set /a EX=0
set /a num1=0
set /a num2=0
set PassReal=DuckLovesHack
set /a PassRealSET=3
set /a PassCheck=0
set /a PassRealTwo=0
set /a GuestModeAllow=100
set /a GuestCalc=100
set /a GuestChange=100
set /a Guest3PLaunch=123
set /a GuestTextPad=123
set /a GuestSettings=123
set /a GuestReleases=123
set /a GuestMP3Player=100
set /a PassLogin=0
set /a JailBreakToggle=123
set /a PasswordOn=100
set /a PPRandomBlocked=0
set Hint=The Password is %PassReal%
set /a BPCalc=0
set /a BPChange=0
set /a BP3PStore=0
set /a BPTextPad=0
set /a BPSettings=0
set /a BPReleases=0
set /a BPMP3Player=0
set /a BPPassProtect=0
set /a SafeMode=100
if exist Configuration.myosconfig goto bootconfig
goto Boot
:boot
cls
title MyKERNEL
echo MyKERNEL version 1.2.0
timeout /T 1 /NOBREAK >nul
echo MyOS is found at /system
timeout /T 0 /NOBREAK >nul
echo Booting up...
timeout /T 0 /NOBREAK >nul
cls
title MyOS
echo 		MMMMMMMM               MMMMMMMM                              OOOOOOOOO        SSSSSSSSSSSSSSS 
echo 		M:::::::M             M:::::::M                            OO:::::::::OO    SS:::::::::::::::S
echo 		M::::::::M           M::::::::M                          OO:::::::::::::OO S:::::SSSSSS::::::S
echo 		M:::::::::M         M:::::::::M                         O:::::::OOO:::::::OS:::::S     SSSSSSS
echo 		M::::::::::M       M::::::::::Myyyyyyy           yyyyyyyO::::::O   O::::::OS:::::S            
echo 		M:::::::::::M     M:::::::::::M y:::::y         y:::::y O:::::O     O:::::OS:::::S            
echo 		M:::::::M::::M   M::::M:::::::M  y:::::y       y:::::y  O:::::O     O:::::O S::::SSSS         
echo 		M::::::M M::::M M::::M M::::::M   y:::::y     y:::::y   O:::::O     O:::::O  SS::::::SSSSS    
echo 		M::::::M  M::::M::::M  M::::::M    y:::::y   y:::::y    O:::::O     O:::::O    SSS::::::::SS  
echo 		M::::::M   M:::::::M   M::::::M     y:::::y y:::::y     O:::::O     O:::::O       SSSSSS::::S 
echo 		M::::::M    M:::::M    M::::::M      y:::::y:::::y      O:::::O     O:::::O            S:::::S
echo 		M::::::M     MMMMM     M::::::M       y:::::::::y       O::::::O   O::::::O            S:::::S
echo 		M::::::M               M::::::M        y:::::::y        O:::::::OOO:::::::OSSSSSSS     S:::::S
echo 		M::::::M               M::::::M         y:::::y          OO:::::::::::::OO S::::::SSSSSS:::::S
echo 		M::::::M               M::::::M        y:::::y             OO:::::::::OO   S:::::::::::::::SS 
echo 		MMMMMMMM               MMMMMMMM       y:::::y                OOOOOOOOO      SSSSSSSSSSSSSSS   
echo 						     y:::::y                                                  
echo 						    y:::::y                                                   
echo 						   y:::::y                                                    
echo 						  y:::::y                                                     
echo 						 yyyyyyy                                                      
timeout /T 1 /NOBREAK >nul
goto login
:login
title MyOS - Login
cls
if %GuestModeAllow% == 100 (
	if %SafeMode% == 100 echo Welcome to MyOS. Type your username and password. [Type [1] for guest] [Type "SafeMode" for Safemode]
)
if %GuestModeAllow% == 100 (
	if %SafeMode% == 123 echo Welcome to MyOS. Type your username and password. [Type [1] for guest]
)
if %GuestModeAllow% == 123 (
	if %SafeMode% == 100 echo Welcome to MyOS. Type your username and password. [Type "SafeMode" for Safemode]
)
if %GuestModeAllow% == 123 (
	if %SafeMode% == 123 echo Welcome to MyOS. Type your username and password.
)
set /p U=Username: 
if %U% == 1 goto GuestCheck
if %U% == SafeMode (
	if %SafeMode% == 100 (
		goto Sboot
	)
	if %SafeMode% == 123 (
		echo The Safe Mode is off. Turn it on in Settings
		timeout /T 1 /NOBREAK >nul
		goto login
	)
)
if %PasswordOn% == 100 (
	goto password
)
if %PasswordOn% == 123 (
	goto desktop
)
:errorcode
cls
title MyKernel
echo                MyOS v.%version%
echo.
echo Your Computer has encounted an error and shut down to 
echo prevent damage to the system.
echo.
echo If the problem still persists, contact Duckloveshack
echo.
echo Errorcode: %ERRORLEVEL%
echo.
echo Press [ENTER] to Restart.
pause >nul
goto boot
:password
cls
echo Welcome to MyOS. Type your username and password. [Press [1] for hint]
echo Username: %U%
set /p PassLogin=Password: 
if %PassLogin% == %PassReal% goto desktop
if %PassLogin% == 1 goto hintpass
echo This is the wrong password. Please type the correct one.
timeout /T 1 /NOBREAK >nul
goto password
:hintpass
cls
echo Welcome to MyOS. Type your username and password.
echo Username: %U%
echo Hint: %Hint%
set /p PassLogin=Password: 
if %PassLogin% == %PassReal% goto desktop
echo This is the wrong password. Please type the correct one.
timeout /T 1 /NOBREAK >nul
goto password
:desktop
title MyOS - Desktop
cls
if not exist MyOS.bat cd..
set /a PassLogin=0
set /a CoronaHint=%random%
echo Welcome, %U%. Choose a program you wish to run.
if %CoronaHint% lss 1000 echo Hint: Wash your hands regularly!
if %CoronaHint% gtr 1000 if %CoronaHint% lss 3000 echo Hint: Don't touch your face with your hands!
if %CoronaHint% gtr 3000 if %CoronaHint% lss 5000 echo Hint: Stay at home!
if %CoronaHint% gtr 5000 if %CoronaHint% lss 7000 echo Hint: Be healthy!
if %CoronaHint% gtr 7000 if %CoronaHint% lss 9000 echo Hint: Don't panic!
if %CoronaHint% gtr 9000 echo Hint: Keep the distance of at least 2 meters!
echo 1 = Calculator             7 = GitHub Releases
echo 2 = Changelog              8 = BioProtect
echo 3 = 3rd Party Launcher     9 = MP3 Player
echo 4 = Text Pad               10 = PassProtect
find "%TestSDK%%TestSDK2%" MyOS.bat >nul && (
	echo 5 = Settings               11 = Software Development Kit
) || (
	echo 5 = Settings 
)            
echo 6 = Shutdown menu          
set /p Choice=Program 
if %Choice% == 1 goto CALCcheck
if %Choice% == 2 goto CHANGEcheck
if %Choice% == 3 goto 3PSTOREcheck
if %Choice% == 4 goto TEXTMENUcheck
if %Choice% == 5 goto SETTINGScheck
if %Choice% == 6 goto SHUTMENU
if %Choice% == 7 goto RELEASEScheck
if %Choice% == 8 goto BIOPROTECTcheck
if %Choice% == 9 goto MP3PLAYERcheck
if %Choice% == 10 goto PASSPROTECTcheck
find "%TestSDK%%TestSDK2%" MyOS.bat && (
	if %Choice% == 11 goto SDKCheck
)
echo This command is unknown. Choose between existing apps.
timeout /T 1 /NOBREAK >nul
goto desktop
:CALCcheck
if %BPCalc% == 1 (
	cls
	echo BioProtect
	echo You need to confirm yourself to get access to CALCULATOR
	set /p PassCheck=Password: 
	if %PassCheck% == %PassReal% goto CALC
	echo The Password is invalid. Aborting operation...
	timeout /T 1 /NOBREAK >nul
	goto desktop
)
if %BPCalc% == 0 goto CALC
:CHANGEcheck
if %BPChange% == 1 (
	cls
	echo BioProtect
	echo You need to confirm yourself to get access to CHANGELOG
	set /p PassCheck=Password: 
	if %PassCheck% == %PassReal% goto CHANGE
	echo The Password is invalid. Aborting operation...
	timeout /T 1 /NOBREAK >nul
	goto desktop
)
if %BPChange% == 0 goto CHANGE
:3PSTOREcheck
if %BP3PStore% == 1 (
	cls
	echo BioProtect
	echo You need to confirm yourself to get access to 3RD PARTY APP LAUNCHER
	set /p PassCheck=Password: 
	if %PassCheck% == %PassReal% goto 3PSTORE
	echo The Password is invalid. Aborting operation...
	timeout /T 1 /NOBREAK >nul
	goto desktop
)
if %BP3PStore% == 0 goto 3PSTORE
:TEXTMENUcheck
if %BPTextPad% == 1 (
	cls
	echo BioProtect
	echo You need to confirm yourself to get access to TEXT PAD
	set /p PassCheck=Password: 
	if %PassCheck% == %PassReal% goto TEXTMENU
	echo The Password is invalid. Aborting operation...
	timeout /T 1 /NOBREAK >nul
	goto desktop
)
if %BPTextPad% == 0 goto TEXTMENU
:SETTINGScheck
if %BPSettings% == 1 (
	cls
	echo BioProtect
	echo You need to confirm yourself to get access to SETTINGS
	set /p PassCheck=Password: 
	if %PassCheck% == %PassReal% goto SETTINGS
	echo The Password is invalid. Aborting operation...
	timeout /T 1 /NOBREAK >nul
	goto desktop
)
if %BPSettings% == 0 goto SETTINGS
:RELEASEScheck
if %BPReleases% == 1 (
	cls
	echo BioProtect
	echo You need to confirm yourself to get access to RELEASES
	set /p PassCheck=Password: 
	if %PassCheck% == %PassReal% goto RELEASES
	echo The Password is invalid. Aborting operation...
	timeout /T 1 /NOBREAK >nul
	goto desktop
)
if %BPReleases% == 0 goto RELEASES
:MP3PLAYERcheck
if %BPMP3Player% == 1 (
	cls
	echo BioProtect
	echo You need to confirm yourself to get access to MP3 PLAYER
	set /p PassCheck=Password: 
	if %PassCheck% == %PassReal% goto MP3PlayerBETAWarning
	echo The Password is invalid. Aborting operation...
	timeout /T 1 /NOBREAK >nul
	goto desktop
)
if %BPMP3Player% == 0 goto MP3PlayerBETAWarning
:PASSPROTECTcheck
if %BPPassProtect% == 1 (
	cls
	echo BioProtect
	echo You need to confirm yourself to get access to PASSPROTECT
	set /p PassCheck=Password: 
	if %PassCheck% == %PassReal% goto PassProtect
	echo The Password is invalid. Aborting operation...
	timeout /T 1 /NOBREAK >nul
	goto desktop
)
if %BPPassProtect% == 0 goto PASSPROTECT
:CALC
title MyOS - Calculator
cls
echo Calculator - Version 1.0.0
echo 1 = Addition
echo 2 = Substraction
echo 3 = Multiplication
echo 4 = Division
echo 5 = Multi-Solve
echo 6 = Exit
set /p Sign=Number 
if %Sign% == 1 goto add
if %Sign% == 2 goto substr
if %Sign% == 3 goto multi
if %Sign% == 4 goto div
if %Sign% == 5 goto mulso
if %Sign% == 6 goto desktop
echo Unknown command. Please choose a correct command.
timeout /T 1 /NOBREAK >nul
goto CALC
:add
cls
echo Please choose 2 numbers you wish to add
set /p num1=
set /p num2=%num1%+
set /a Answer=%num1%+%num2%
echo %num1%+%num2%=%answer%
pause >nul
goto CALC
:substr
cls
echo Please choose 2 numbers you wish to substract
set /p num1=
set /p num2=%num1%-
set /a Answer=%num1%-%num2%
echo %num1%-%num2%=%answer%
pause >nul
goto CALC
:multi
cls
echo Please choose 2 numbers you wish to multiply
set /p num1=
set /p num2=%num1%*
set /a Answer=%num1%*%num2%
echo %num1%*%num2%=%answer%
pause >nul
goto CALC
:div
cls
echo Please choose 2 numbers you wish to divide
set /p num1=
set /p num2=%num1%/
set /a Answer=%num1%/%num2%
echo %num1%/%num2%=%answer%
pause >nul
goto CALC
:mulso
cls
echo Type the exercise you wish to solve
echo Addition = +
echo Substraction = -
echo Multiplication = *
echo Division = /
set /p EX=
set /a Answer=%EX%
echo %EX%=%Answer%
pause >nul
goto CALC
:CHANGE
cls
title MyOS - Changelog
echo Version 0.0.1
echo The first alpha version of the OS
echo Version 0.0.2
echo New System App: Text Editor.
echo Version 0.0.3 
echo Added "MyOS App Sample" and "ReadME MyOS". Introduced "MyOS App Launcher".
echo Version 0.1.0 (BETA 1)
echo The Kernel is updated. Added Multi-Solve in Calculator. Deleted Log Off option because of a bug.
echo Version 0.1.1 (BETA 1.1)
echo Readded Logoff. Now "Text Editor" and "3rd Party Launcher" don't have unneeded text while choosing a file.
echo Version 0.2.0 (BETA 2)
echo Updated Kernel. Added Settings. You can change system colour and time with date! P.S. To Change time or date, use administrator privilages.
echo Version 0.2.1 (BETA 2.1)
echo The 3RD Party App Launcher now supports CMD apps!
echo Version 0.3.0 (Release Candidate 1)
echo Github Releases are easy accesible from Desktop! The guest mode was added!
echo Version 0.4.0 (Release Candidate 2)
echo Little update. Now all the empty choices won't crash the system.
echo Version 1.0.0
echo The first stable release of MyOS! The Safe Mode was added in case if normal mode is corrupted.
echo Version 1.1.0
echo Now Safe Mode can recover the system, but it requires internet connection and browser availability.
echo Version 1.1.1
echo Bug-Fixes. Now the restore downloads the latest update.
echo Version 1.1.2
echo Now you can update the system using the Update Option.
echo.
echo Press [ENTER] for the next page
pause >nul
cls
echo Version 1.2.0
echo Now you can change User Properties. The Update Option was moved to settings.
echo Version 1.2.1
echo Bug-Fixes. Now you should confirm yourself when logging in Safe Mode
echo Version 1.3.0
echo Better folder recognition in 3PStore and TextPad. Text fix in Settings.
echo Version 1.4.0
echo Bug Fixes. Now apps detect if the file(s) exist.
echo Version 1.4.1
echo Bug Fixes.
echo Version 1.5.0
echo The App_Sample is no longer in the archive. MyOS will automatically generate some of the folders.
echo Version 1.6.0
echo Now the Guest Settings change a lot faster and easier! You can turn off the password!
echo Version 1.7.0
echo Merry Christmas! Now you can change the hint! The password changing to 0 bug was fixed!
echo Version 1.8.0
echo Bug Fixes. Now Text Pad is available in Safe Mode.
echo Version 1.9.0
echo The first release in 2020! The kernel was updated to version 1.2.0.
echo Version 2.0.0
echo + BioProtect! Block with a password the system apps of MyOS.
echo + MP3 Player! Play your favourite songs in MyOS.
echo + PassProtect! Save your Passwords in files, accecible only in MyOS.
echo + Turn Off Safe Mode! If you don't need it, then you can simply turn it off!
echo Press [ENTER] for the next page
pause >nul
cls
echo Version 2.0.1
echo Settings Configurations! Set your settings everytime you boot.
echo Version 2.0.2
echo You can type up to 12 lines in Text Pad.
echo Version 2.1.0
echo + You can type up to 60 lines in Text Pad.
echo + The New Text Pad is avaiable in Safe Mode.
echo Version 2.2.0
echo + Fixed PassProtect Open Function
echo + PassProtect needs confirmation to delete passwords.
echo + Added hints for COVID-19
pause >nul
goto desktop
:3PSTORE
cls
if exist "MyOS.bat" (
	if not exist "MyOS Applications" (
		mkdir "MyOS Applications"
	)
	cd "MyOS Applications"
) else (
	cd..
	if exist "MyOS.bat" (
		if not exist "MyOS Applications" (
			mkdir "MyOS Applications"
		)
		cd "MyOS Applications"
	)
)
title MyOS - 3rd Party App Launcher
echo 3rd Party App Launcher Version 1.0.0
echo Please choose an application to run. (Without file extension) (Type [1] to exit)
dir /b
set /p App=App Name: 
if %App% == 1 goto desktop
if not exist %App%.bat (
	if not exist %App%.cmd (
		echo This application does not exist. Please choose another one.
		timeout /T 1 /NOBREAK >nul
		goto 3PSTORE
	)
)
if exist %App%.cmd (
	start %App%.cmd
)
if exist %App%.bat (
	start %App%.bat
)
if exist %App%.cmd (
	if %App% == OrangeInstaller goto errorORANGE
	if %App% == OrangeInstallerV1.5.0 goto errorORANGE
	if %App% == OrangeInstallerV1.6.0 goto errorORANGE
	if %App% == pos1xeye goto errorORANGE
)
goto Desktop
:TEXTMENU
cls
if exist "MyOS.bat" (
	if not exist "MyOS Text Files" (
		mkdir "MyOS Text Files"
	)
	cd "MyOS Text Files"
) else (
	cd..
	if exist "MyOS.bat" (
		if not exist "MyOS Text Files" (
			mkdir "MyOS Text Files"
		)
		cd "MyOS Text Files"
	)
)
title MyOS - Text Pad
echo Text Editor version 2.0.0
echo 1 = Create a new text file.
echo 2 = View existing text files.
echo 3 = Delete an existing file.
echo 4 = Exit
set /p Choice=Command 
if %Choice% == 1 goto createtext
if %Choice% == 2 goto viewtext
if %Choice% == 3 goto deltext
if %Choice% == 4 goto desktop
echo Invalid command. Please choose between existing commands.
timeout /T 1 /NOBREAK >nul
goto TEXTMENU
:createtext
cls
echo Please type the name of the text file you want to make. (It can't contain spaces) (Type [1] to exit)
set /p N=Name: 
if %N% == 1 goto TEXTMENU
goto LinesText
:LinesText
cls
echo How many lines do you want the file to have? (1-100)
set /p Lines=Lines: 
if %Lines% GTR 0 (
	if %Lines% LSS 61 (
		set /a CurrentLine=1
		goto WriteText
	)
)
echo This number is invalid
timeout /T 1 /NOBREAK >nul
goto LinesText
:WriteText
cls
setlocal EnableDelayedExpansion
if not ERRORLEVEL 0 goto errorcode
echo Write the text of the file. (Use [ENTER] to proceed into another line)
set /p W%CurrentLine%=
if %CurrentLine% == 0 (
	echo !W%CurrentLine%! > %N%.txt
) else (
	echo !W%CurrentLine%! >> %N%.txt
)
if not %CurrentLine% == %Lines% (
	set /a CurrentLine=%CurrentLine%+1
	goto WriteText
) else (
	goto textmenu
)
:viewtext
cls
echo Type the name of the file you wish to open (without file extension) (Type [1] to exit)
dir /b
set /p open=File Name 
if %open% == 1 goto TEXTMENU
if exist %open%.txt (
	notepad %open%
	pause >nul
	goto TEXTMENU
) else (
	echo The file does not exist.
	timeout /T 1 /NOBREAK >nul
	goto viewtext
)
:deltext
cls
echo Type the name of the file you wish to delete (without file extension) (Type [1] to exit)
dir /b
set /p delete=File Name 
if %delete% == 1 goto TEXTMENU
if exist %delete%.txt (
	del %delete%.txt /s /q >nul
	echo Deleting %delete.txt%
	timeout /T 1 /NOBREAK >nul
	goto TEXTMENU
) else (
	echo The file does not exist.
	timeout /T 1 /NOBREAK >nul
	goto deltext
)
:settings
cls
title MyOS - Settings
echo Settings - Version 2.0.0
echo 1 = Change Time and Date
echo 2 = System Colour
echo 3 = Users
echo 4 = Update
echo 5 = Applications
echo 6 = Settings Configurations
echo 7 = Exit
set /p Choice=Command 
if %Choice% == 1 goto ctimeadmin
if %Choice% == 2 goto ccolor
if %Choice% == 3 goto Us
if %Choice% == 4 goto Update
if %Choice% == 5 goto SetAp
if %Choice% == 6 goto SetConfig
if %Choice% == 7 goto desktop
echo Invalid Command. Choose between [1], [2] or [3].
timeout /T 1 /NOBREAK >nul
goto SETTINGS
:SetConfig
cls
echo Settings - Settings Configurations
echo 1 = Create a configuration
echo 2 = Open the configuration 
echo 3 = Delete the configuration 
echo 4 = Back
set /p Choice=Choice: 
if %Choice% == 1 goto SetConfigCreate
if %Choice% == 2 (
	if exist Configuration.myosconfig goto SetConfigOpen
)
if %Choice% == 3 (
	if exist Configuration.myosconfig goto SetConfigDel
)
if %Choice% == 4 (
	goto settings
)
if not ERRORLEVEL 0 goto errorcode
echo Invalid command.
timeout /T 1 /NOBREAK >nul
goto SetConfig
:SetConfigCreate
cls
echo Settings
echo Now we're collecting data to export the configuration. Please wait...
timeout /T 5 /NOBREAK >nul
(
echo @echo off
echo echo %mp3pro% ^> %TMP%\MyOSMP3PRO
echo echo %SafeMode% ^> %TMP%\MyOSSafeMode
echo echo %PassReal% ^> %TMP%\MyOSPassWord 
echo echo %GuestModeAllow% ^> %TMP%\MyOSGuestMode 
echo echo %GuestCalc% ^> %TMP%\MyOSGuestModeCalc 
echo echo %GuestChange% ^> %TMP%\MyOSGuestModeChange 
echo echo %Guest3PLaunch% ^> %TMP%\MyOSGuestMode3PLaunch 
echo echo %GuestTextPad% ^> %TMP%\MyOSGuestModeTextPad 
echo echo %GuestSettings% ^> %TMP%\MyOSGuestModeSettings 
echo echo %GuestReleases% ^> %TMP%\MyOSGuestModeReleases 
echo echo %GuestMP3Player% ^> %TMP%\MyOSGuestModeMP3Player 
echo echo %PasswordOn% ^> %TMP%\MyOSPasswordOn 
echo echo %BPCalc% ^> %TMP%\MyOSBioProtectCalc 
echo echo %BPChange% ^> %TMP%\MyOSBioProtectChange 
echo echo %BP3PStore% ^> %TMP%\MyOSBioProtect3PStore 
echo echo %BPTextPad% ^> %TMP%\MyOSBioProtectTextPad 
echo echo %BPSettings% ^> %TMP%\MyOSBioProtectSettings 
echo echo %BPReleases% ^> %TMP%\MyOSBioProtectReleases 
echo echo %BPMP3Player% ^> %TMP%\MyOSBioProtectMP3Player 
echo echo %BPPassProtect% ^> %TMP%\MyOSBioProtectPassProtect 
echo echo "%Hint%" ^> %TMP%\MyOSHint 
) > Configuration.myosconfig
goto SetConfig
:SetConfigOpen
cls
echo Settings
echo Please wait until we set up MyOS...
echo MyOS will restart after this...
timeout /T 5 /NOBREAK >nul
goto bootconfig
:bootconfig
cmd < Configuration.myosconfig >nul
set /p mp3pro=<%TMP%\MyOSMP3PRO
set /p SafeMode=<%TMP%\MyOSSafeMode
set /p PassReal=<%TMP%\MyOSPassWord
set /p GuestModeAllow=<%TMP%\MyOSGuestMode
set /p GuestCalc=<%TMP%\MyOSGuestModeCalc
set /p GuestChange=<%TMP%\MyOSGuestModeChange
set /p Guest3PLaunch=<%TMP%\MyOSGuestMode3PLaunch
set /p GuestTextPad=<%TMP%\MyOSGuestModeTextPad
set /p GuestSettings=<%TMP%\MyOSGuestModeSettings
set /p GuestReleases=<%TMP%\MyOSGuestModeReleases
set /p GuestMP3Player=<%TMP%\MyOSGuestModeMP3Player
set /p PasswordOn=<%TMP%\MyOSPasswordOn
set /p BPCalc=<%TMP%\MyOSBioProtectCalc
set /p BPChange=<%TMP%\MyOSBioProtectChange
set /p BP3PStore=<%TMP%\MyOSBioProtect3PStore
set /p BPTextPad=<%TMP%\MyOSBioProtectTextPad
set /p BPSettings=<%TMP%\MyOSBioProtectSettings
set /p BPReleases=<%TMP%\MyOSBioProtectReleases
set /p BPMP3Player=<%TMP%\MyOSBioProtectMP3Player
set /p BPPassProtect=<%TMP%\MyOSBioProtectPassProtect
set /p Hint=<%TMP%\MyOSHint
del %TMP%\MyOSMP3PRO /s /q >nul
del %TMP%\MyOSPassWord /s /q >nul
del %TMP%\MyOSGuestMode /s /q >nul
del %TMP%\MyOSGuestModeCalc /s /q >nul
del %TMP%\MyOSGuestModeChange /s /q >nul
del %TMP%\MyOSGuestMode3PLaunch /s /q >nul
del %TMP%\MyOSGuestModeTextPad /s /q >nul
del %TMP%\MyOSGuestModeSettings /s /q >nul
del %TMP%\MyOSGuestModeReleases /s /q >nul
del %TMP%\MyOSGuestModeMP3Player /s /q >nul
del %TMP%\MyOSPasswordOn /s /q >nul
del %TMP%\MyOSBioProtectCalc /s /q >nul
del %TMP%\MyOSBioProtectChange /s /q >nul
del %TMP%\MyOSBioProtect3PStore /s /q >nul
del %TMP%\MyOSBioProtectTextPad /s /q >nul
del %TMP%\MyOSBioProtectSettings /s /q >nul
del %TMP%\MyOSBioProtectReleases /s /q >nul
del %TMP%\MyOSBioProtectMP3Player /s /q >nul
del %TMP%\MyOSBioProtectPassProtect /s /q >nul
del %TMP%\MyOSHint >nul
goto boot
:SetConfigDel
cls
echo Settings - Settings Configurations - Delete Config
echo Deleting configuration...
del Configuration.myosconfig
timeout /T 1 /NOBREAK >nul
goto SetConfig
:SetAp
cls
echo Settings - Applications
echo 1 = MP3 Player
echo 2 = Exit
set /p Choice=Choice: 
if %Choice% == 1 goto MP3Set
if %Choice% == 2 goto Settings
echo Invalid command.
timeout /T 1 /NOBREAK >nul
goto SetAp
:MP3Set
cls
echo Settings - Applications - MP3 Player
echo Select a type of MP3 Player to load everytime
if %mp3pro% == 0 (
	echo Currently the shortcut loads the MP3 Launcher
)
if %mp3pro% == 1 (
	echo Currently the shortcut loads the MP3 Player (Background)
)
if %mp3pro% == 2 (
	echo Currently the shortcut loads the MP3 Player (WMP)
)
echo 1 = Default
echo 2 = MP3 Player (Background)
echo 3 = MP3 Player (WMP)
echo 4 = Go to MP3 Player
echo 5 = Back
set /p Choice=Choice: 
if %Choice% == 1 (
	set /a mp3pro=0
	goto MP3Set
)
if %Choice% == 2 (
	set /a mp3pro=1
	goto MP3Set
)
if %Choice% == 3 (
	set /a mp3pro=2
	goto MP3Set
)
if %Choice% == 4 (
	goto MP3PlayerBETAWarning
)
if %Choice% == 5 (
	goto Settings
)
echo Invalid command.
timeout /T 1 /NOBREAK >nul
goto MP3Set
:ccolor
cls
echo Choose the new color for your system
echo Here's the full list of the Operating System colour:
echo 0 - Black        8 - Gray           
echo 1 - Dark-Blue    9 - Light-Blue     
echo 2 - Green        A - Light-Green    
echo 3 - Blue         B - Very Light Blue
echo 4 - Red          C - Light-Red      
echo 5 - Purple       D - Light-Purple   
echo 6 - Yellow       E - Light-Yellow   
echo 7 - Light-Gray   F - White          
echo Type like this: 38 (Blue Background And Gray Text)
set /p Color=Your Colour: 
color %Color%
timeout /T 0 /NOBREAK >nul
goto SETTINGS
:ctimeadmin
net session >nul 2>&1
if %errorLevel% == 0 (
    goto ctime
) else (
    echo goto adminrequied
)
:adminrequired
cls
echo Administrator privilages are required. Please ReRun the batch file as Administrator or use the system without it.
echo Press [ENTER] to exit
pause >nul
goto SETTINGS
:ctime
cls
echo Choose a new Time:
set /p Time=Time: 
goto timequestion
:timequestion
cls
echo Your Current Time is:
time /t
echo Do you want to change it to: 
echo %Time% ?
set /p Choice=Answer: 
if %Choice% == yes goto newtime
if %Choice% == no goto cdate
if %Choice% == Yes goto newtime
if %Choice% == No goto cdate
echo Invalid Command. Please try again
timeout /T 1 /NOBREAK >nul
goto timequestion
:newtime
time %Time%
echo The new time is %Time%
timeout /T 1 /NOBREAK >nul
goto cdate
:cdate
cls
echo Choose a new Date:
set /p Date=Date: 
goto datequestion
:datequestion
cls
echo Your Current Date is:
date /t
echo Do you want to change it to: 
echo %Date% ?
set /p Choice=Answer: 
if %Choice% == yes goto newdate
if %Choice% == no goto SETTINGS
echo Invalid Command. Please try again
timeout /T 1 /NOBREAK >nul
goto datequestion
:newdate
date %Date%
echo The new date is %Date%
timeout /T 1 /NOBREAK >nul
goto SETTINGS
:Us
cls
echo MyOS - Settings - Users
echo 1 = %U%
echo 2 = Guest Mode
if %SafeMode% == 100 (
	echo 3 = Safe Mode - ON
)
if %SafeMode% == 123 (
	echo 3 = Safe Mode - OFF
)
echo 4 = Back
set /p Choice=Command 
if %Choice% == 1 goto USet
if %Choice% == 2 goto GuestModeSet
if %Choice% == 3 goto SafeModeTogg
if %Choice% == 4 goto Settings
echo Unvalid symbol. Please type a valid one.
timeout /T 1 /NOBREAK >nul
goto Settings
:SafeModeTogg
if %SafeMode% == 100 (
	set /a SafeMode=123
	goto Us
)
if %SafeMode% == 123 (
	set /a SafeMode=100
	goto Us
)
:USet
cls
echo MyOS - Settings - Users - %U%
echo 1 = Change Username
echo 2 = Change Password
echo 3 = Change Password Hint
if %PasswordOn% == 100 (
	echo 4 = Password - ON
)
if %PasswordOn% == 123 (
	echo 4 = Password - OFF
)
echo 5 = Exit
set /p Choice=Command 
if %Choice% == 1 goto ChUS
if %PasswordOn% == 100 (
	if %Choice% == 2 goto ChPs
	if %Choice% == 3 goto ChPsHintCh
)
if %PasswordOn% == 123 (
	if %Choice% == 2 goto ChPsNPas
	if %Choice% == 3 goto ChPsNPas
)
if %Choice% == 4 goto PsTog
if %Choice% == 5 goto Us
echo Invalid symbol. Please type a valid number
timeout /T 1 /NOBREAK >nul
goto USet
:ChPsNPas
cls
echo The Password is off. Turn it on to change it or the hint.
timeout /T 1 /NOBREAK >nul
goto USet
:ChPsHintCh
cls
echo Change your password hint. [Type [1] to exit] [Type [2] to reset] [You cannot use [ENTER]]
echo Your current password is: %PassReal%
echo Use "" if you have at least one space.
echo.
set /p HintChange=New Hint: 
if %HintChange% == 1 goto USet
if %HintChange% == 2 (
	set Hint=The Password is %PassReal%
	timeout /T 1 /NOBREAK >nul
	goto USet
)
set Hint=%HintChange%
timeout /T 1 /NOBREAK >nul
goto USet
:PsTog
cls
echo Wait please...
timeout /T 2 /NOBREAK >nul
if %PasswordOn% == 100 (
	cls
	echo Please confirm you're the current user
	echo NOTE: Don't know why, but you need to confirm 2 times to turn off password :/
	set /p PassCheck=Password: 
	if %PassCheck% == %PassReal% (
		set /a PasswordOn=123
		set /a BPCalc=0
		set /a BPChange=0
		set /a BP3PStore=0
		set /a BPTextPad=0
		set /a BPSettings=0
		set /a BPReleases=0
		set /a BPMP3Player=0
		set /a BPPassProtect=0
		goto USet
	) else (
		echo The passwords do not match. Aborting operation...
		timeout /T 1 /NOBREAK >nul
		goto USet
	)
)
if %PasswordOn% == 123 (
	set /a PasswordOn=100
	set PassReal=DuckLovesHack
	set "Hint=The Password is %PassReal%"
	echo The password is on. Logging off...
	timeout /T 1 /NOBREAK >nul
	goto login
)
:ChUS
cls
set /p U=Type Your New Username: 
echo Changing Name...
timeout /T 4 /NOBREAK >nul
goto USet
:ChPs
cls
echo Type Your Current Password: [Type 1 for exit]
echo The Current Hint Will Be Reset After The Password Was Changed.
set /p PassCheck=
if %PassCheck% == %PassReal% goto ChPsCon
if %PassCheck% == 1 goto USet
echo The Passwords Do Not Match. Please Type Your Current Password.
timeout /T 1 /NOBREAK >nul
goto ChPs
:ChPsCon
cls
set /p PassRealSET=Type Your New Password: 
if %PassRealSET% == %PassReal% goto ChPsErr
set /p PassRealTwo=Retype Your New Password: 
if %PassRealTwo% == %PassRealSET% goto ChPsFin
echo The Passwords Do Not Match. Please Retype The Passwords Correctly
timeout /T 1 /NOBREAK >nul
goto ChPsCon
:ChPsErr
echo You shouldn't type one of your previous passwords. Please create a new one
timeout /T 1 /NOBREAK >nul
goto ChPsCon
:ChPsFin
cls
set PassReal=%PassRealSET%
set Hint=The Password is %PassReal%
echo The Password was changed. Wait till you will be redirected to the login screen.
timeout /T 1 /NOBREAK >nul
set /a PassRealSET=123
goto login
:GuestModeSet
cls
echo MyOS - Settings - Guest Mode
if %GuestModeAllow% == 123 (
	echo 1 = OFF
)
if %GuestModeAllow% == 100 (
	echo 1 = ON
)
echo 2 = Application Settings
echo 3 = Exit
set /p Choice=Command 
if %Choice% == 1 goto GToggle
if %Choice% == 2 goto GAppSet
if %Choice% == 3 goto Us
echo Invalid symbol. Please type a valid number
timeout /T 1 /NOBREAK >nul
goto GuestModeSet
:GToggle
cls
echo Changes are applying... Please wait...
timeout /T 2 /NOBREAK >nul
if %GuestModeAllow% == 100 (
	set /a GuestModeAllow=123
	goto GuestModeSet
)
if %GuestModeAllow% == 123 (
	set /a GuestModeAllow=100
	goto GuestModeSet
)
:GAppSet
cls
echo MyOS - Settings - Users - Guest Mode - Apps
if %GuestCalc% == 100 (
	echo 1 = Calculator - ON
)
if %GuestCalc% == 123 (
	echo 1 = Calculator - OFF
)
if %GuestChange% == 100 (
	echo 2 = Changelog - ON
)
if %GuestChange% == 123 (
	echo 2 = Changelog - OFF
)
if %Guest3PLaunch% == 100 (
	echo 3 = 3rd Party Launcher - ON
)
if %Guest3PLaunch% == 123 (
	echo 3 = 3rd Party Launcher - OFF
)
if %GuestTextPad% == 100 (
	echo 4 = Text Pad - ON
)
if %GuestTextPad% == 123 (
	echo 4 = Text Pad - OFF
)
if %GuestSettings% == 100 (
	echo 5 = Settings - ON
)
if %GuestSettings% == 123 (
	echo 5 = Settings - OFF
)
if %GuestReleases% == 100 (
	echo 6 = GitHub Releases - ON
)
if %GuestReleases% == 123 (
	echo 6 = GitHub Releases - OFF
)
if %GuestMP3Player% == 100 (
	echo 7 = MP3 Player - ON
)
if %GuestMP3Player% == 123 (
	echo 7 = MP3 Player - OFF
)
echo 8 = Exit
set /p Choice=Select: 
if %Choice% == 1 goto GChangeCalc
if %Choice% == 2 goto GChangeChange
if %Choice% == 3 goto GChange3PLaunch
if %Choice% == 4 goto GChangeTextPad
if %Choice% == 5 goto GChangeSettings
if %Choice% == 6 goto GChangeReleases
if %Choice% == 7 goto GChangeMP3Player
if %Choice% == 8 goto GuestModeSet
echo The selection is incorrect. Please choose between existing ones.
timeout /T 1 /NOBREAK >nul
goto GAppSet
:GChangeCalc
if %GuestCalc% == 100 (
	set /a GuestCalc=123
	goto GAppSet
)
if %GuestCalc% == 123 (
	set /a GuestCalc=100
	goto GAppSet
)
:GChangeChange
if %GuestChange% == 100 (
	set /a GuestChange=123
	goto GAppSet
)
if %GuestChange% == 123 (
	set /a GuestChange=100
	goto GAppSet
)
:GChange3PLaunch
if %Guest3PLaunch% == 100 (
	set /a Guest3PLaunch=123
	goto GAppSet
)
if %Guest3PLaunch% == 123 (
	set /a Guest3PLaunch=100
	goto GAppSet
)
:GChangeTextPad
if %GuestTextPad% == 100 (
	set /a GuestTextPad=123
	goto GAppSet
)
if %GuestTextPad% == 123 (
	set /a GuestTextPad=100
	goto GAppSet
)
:GChangeSettings
if %GuestSettings% == 100 (
	set /a GuestSettings=123
	goto GAppSet
)
if %GuestSettings% == 123 (
	set /a GuestSettings=100
	goto GAppSet
)
:GChangeReleases
if %GuestReleases% == 100 (
	set /a GuestReleases=123
	goto GAppSet
)
if %GuestReleases% == 123 (
	set /a GuestReleases=100
	goto GAppSet
)
:GChangeMP3Player
if %GuestMP3Player% == 100 (
	set /a GuestMP3Player=123
	goto GAppSet
)
if %GuestMP3Player% == 123 (
	set /a GuestMP3Player=100
	goto GAppSet
)
:RELEASES
start www.github.com/Duckloveshack/MyOS/releases 
goto desktop
:BioProtectCheck
if %PasswordOn% == 100 (
	cls
	echo To enter BioProtect, confirm yourself:
	set /p PassCheck=Password: 
	if %PassCheck% == %PassReal% goto BioProtect
	echo The passwords don't match. Aborting...
	timeout /T 1 /NOBREAK >nul
	goto desktop
)
if %PasswordOn% == 123 (
	echo The password is off. Please turn it on to use BioProtect.
	timeout /T 1 /NOBREAK >nul
	goto desktop
)
:BioProtect
cls
title MyOS - BioProtect
echo BioProtect - Version 1.0.0
if %BPCalc% == 0 (
	echo 1 = Calculator - UnProtected
)
if %BPCalc% == 1 (
	echo 1 = Calculator - Protected
)
if %BPChange% == 0 (
	echo 2 = Changelog - UnProtected
)
if %BPChange% == 1 (
	echo 2 = Changelog - Protected
)
if %BP3PStore% == 0 (
	echo 3 = 3rd Party App Launcher - UnProtected
)
if %BP3PStore% == 1 (
	echo 3 = 3rd Party App Launcher - Protected
)
if %BPTextPad% == 0 (
	echo 4 = Text Pad - UnProtected
)
if %BPTextPad% == 1 (
	echo 4 = Text Pad - Protected
)
if %BPSettings% == 0 (
	echo 5 = Settings - UnProtected
)
if %BPSettings% == 1 (
	echo 5 = Settings - Protected
)
if %BPReleases% == 0 (
	echo 6 = Releases - UnProtected
)
if %BPReleases% == 1 (
	echo 6 = Releases - Protected
)
if %BPMP3Player% == 0 (
	echo 7 = MP3 Player - UnProtected
)
if %BPMP3Player% == 1 (
	echo 7 = MP3 Player - Protected
)
if %BPMP3Player% == 0 (
	echo 8 = PassProtect - UnProtected
)
if %BPMP3Player% == 1 (
	echo 8 = PassProtect - Protected
)
echo 9 = Exit
set /p Choice=Choice: 
if %Choice% == 1 goto BPCalcToggle
if %Choice% == 2 goto BPChangeToggle
if %Choice% == 3 goto BP3PStoreToggle
if %Choice% == 4 goto BPTextPadToggle
if %Choice% == 5 goto BPSettingsToggle
if %Choice% == 6 goto BPReleasesToggle
if %Choice% == 7 goto BPMP3PlayerToggle
if %Choice% == 8 goto BPPassProtectToggle
if %Choice% == 9 goto desktop
echo This choice doesn't exist
timeout /T 1 /NOBREAK >nul
goto BioProtect
:BPCalcToggle
if %BPCalc% == 0 (
	set /a BPCalc=1
	goto BioProtect
)
if %BPCalc% == 1 (
	set /a BPCalc=0
	goto BioProtect
)
:BPChangeToggle
if %BPChange% == 0 (
	set /a BPChange=1
	goto BioProtect
)
if %BPChange% == 1 (
	set /a BPChange=0
	goto BioProtect
)
:BP3PStoreToggle
if %BP3PStore% == 0 (
	set /a BP3PStore=1
	goto BioProtect
)
if %BP3PStore% == 1 (
	set /a BP3PStore=0
	goto BioProtect
)
:BPTextPadToggle
if %BPTextPad% == 0 (
	set /a BPTextPad=1
	goto BioProtect
)
if %BPTextPad% == 1 (
	set /a BPTextPad=0
	goto BioProtect
)
:BPSettingsToggle
if %BPSettings% == 0 (
	set /a BPSettings=1
	goto BioProtect
)
if %BPSettings% == 1 (
	set /a BPSettings=0
	goto BioProtect
)
:BPReleasesToggle
if %BPReleases% == 0 (
	set /a BPReleases=1
	goto BioProtect
)
if %BPReleases% == 1 (
	set /a BPReleases=0
	goto BioProtect
)
:BPMP3PlayerToggle
if %BPMP3Player% == 0 (
	set /a BPMP3Player=1
	goto BioProtect
)
if %BPMP3Player% == 1 (
	set /a BPMP3Player=0
	goto BioProtect
)
:BPPassProtectToggle
if %BPPassProtect% == 0 (
	set /a BPPassProtect=1
	goto BioProtect
)
if %BPPassProtect% == 1 (
	set /a BPPassProtect=0
	goto BioProtect
)
:MP3PlayerBETAWarning
if %mp3pro% == 1 goto MP3Player
if %mp3pro% == 2 goto OLDMP3Player
cls
echo Welcome to MyOS 2.0! Here, you can choose the type of MP3 Player that is needed for you.
echo 1 = Launch MP3 Player (Background)
echo 2 = Launch MP3 Player (WMP)
echo 3 = Set MP3 Player Priority (It can be changed in Settings)
echo 4 = Exit
set /p Choice=Choice: 
if %Choice% == 1 goto MP3Player
if %Choice% == 2 goto OLDMP3Player
if %Choice% == 3 goto MP3Set
if %Choice% == 4 goto desktop
echo Please select something.
timeout /T 1 /NOBREAK >nul
goto MP3PlayerBETAWarning
:MP3Player
if %NowPlaying% == 1 goto MP3Play
if %NowPlaying% == 2 goto MP3PlayLoop
set /a NowPlaying=0
cls
if exist "MyOS.bat" (
	if not exist "MyOS MP3 Files" (
		mkdir "MyOS MP3 Files"
	)
	cd "MyOS MP3 Files"
) else (
	cd..
	if exist "MyOS.bat" (
		if not exist "MyOS MP3 Files" (
			mkdir "MyOS MP3 Files"
		)
		cd "MyOS MP3 Files"
	)
)
title MyOS - MP3 Player
echo MP3 Player - Version 1.0.0
echo.
echo Choose a soundtrack to play: [Add "loop" to make the song infinetly loop] [Type with the extension (EX: .mp3, .wav)] [Type [1] to exit]
echo Example: test.mp3loop
echo.
dir /b
set /p Song=Song: 
if %Song% == 1 goto desktop
if exist %Song% (
	(echo %Song% | findstr /i /c:"loop" >nul) && (goto MP3PlayLoopVBS) || (goto MP3PlayVBS)
)
if exist %Song:loop=% (
	(echo %Song% | findstr /i /c:"loop" >nul) && (goto MP3PlayLoopVBS) || (goto MP3PlayVBS)
)
echo This song doesn't exist or has a lack of the extension. Please try again later.
timeout /T 1 /NOBREAK >nul
goto MP3Player
:MP3PlayVBS
set /a NowPlaying=1
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%Song%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >%Song%.vbs
start /min %Song%.vbs
goto MP3Play
:MP3PlayLoopVBS
set /a NowPlaying=2
(
echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
echo Sound.URL = "%Song:loop=%"
echo Sound.Controls.play
echo do while Sound.currentmedia.duration = 0
echo wscript.sleep 100
echo loop
echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000
) > %Song:loop=%.vbs
(
echo @echo off
echo title MyOS_MP3_Loop_Assistant
echo :loop
echo start /wait /min %Song:loop=%.vbs
echo goto loop
) > %Song:loop=%.bat
start /min %Song:loop=%.bat
goto MP3PlayLoop
:MP3Play
cls
title MyOS - MP3 Player - Now Playing %Song%
echo MP3 Player - Version 1.0.0
echo Do not close MyOS without turning off the music.
echo Now Playing - %song%
echo.
echo What are you going to do?
echo 1 = Stop the song
echo 2 = Go To Desktop
echo 3 = Stop and Exit
set /p Choice=Choice: 
if %Choice% == 1 (
	set /a NowPlaying=0
	taskkill /f /im wscript.exe
	del %song%.vbs
	goto MP3PLAYER
)
if %Choice% == 2 goto desktop
if %Choice% == 3 (
	set /a NowPlaying=0
	taskkill /f /im wscript.exe
	del %song%.vbs
	goto desktop
)
echo This choice is undefined.
timeout /T 1 /NOBREAK >nul
goto MP3Play
:MP3PlayLoop
cls
title MyOS - MP3 Player - Now Playing: %Song:loop=%
echo MP3 Player - Version 1.0.0
echo Do not close MyOS without turning off the looping music.
echo Now Playing - %Song:loop=%
echo.
echo What are you going to do?
echo 1 = Stop the song
echo 2 = Go To Desktop
echo 3 = Stop and Exit
set /p Choice=Choice: 
if %Choice% == 1 (
	set /a NowPlaying=0
	taskkill /f /fi "windowtitle eq MyOS_MP3_Loop_Assistant"
	taskkill /f /im wscript.exe
	del %Song:loop=%.vbs
	del %Song:loop=%.bat
	goto MP3PLAYER
)
if %Choice% == 2 goto desktop
if %Choice% == 3 (
	set /a NowPlaying=0
	taskkill /f /fi "windowtitle eq MyOS_MP3_Loop_Assistant"
	taskkill /f /im wscript.exe
	del %Song:loop=%.vbs
	del %Song:loop=%.bat
	goto desktop
)
echo This choice is undefined.
timeout /T 1 /NOBREAK >nul
goto MP3PlayLoop
:OLDMP3Player
cls
taskkill  /F /IM wmplayer.exe 1>nul 2>nul
if exist "MyOS.bat" (
	if not exist "MyOS MP3 Files" (
		mkdir "MyOS MP3 Files"
	)
	cd "MyOS MP3 Files"
) else (
	cd..
	if exist "MyOS.bat" (
		if not exist "MyOS MP3 Files" (
			mkdir "MyOS MP3 Files"
		)
		cd "MyOS MP3 Files"
	)

)
title MyOS - MP3 Player
echo MP3 Player - Version 1.0.0
echo.
echo Choose a soundtrack to play: [Type with extension] [Type [1] to exit]
dir /b
set /p Song=Song: 
if %Song% == 1 goto desktop
if exist %Song% (
	start wmplayer.exe "%cd%\%Song%" /min
	goto OLDMP3Play
)
echo This piece of music doesn't exist. Please type a valid one
timeout /T 1 /NOBREAK >nul
goto OLDMP3Player
:OLDMP3Play
cls
title MyOS - MP3 Player - Now Playing %Song%
echo Now Playing - %Song%
echo.
echo What do you want to do?
echo 1 = Choose another song
echo 2 = Exit and stop
set /p Choice=Choice: 
if %Choice% == 1 goto OLDMP3Player
if %Choice% == 2 (
	taskkill  /F /IM wmplayer.exe
	goto desktop
)
echo This choice is undefined.
timeout /T 1 /NOBREAK >nul
goto OLDMP3Play
:PassProtect
cls
if exist "MyOS.bat" (
	if not exist "MyOS PassProtect" (
		mkdir "MyOS PassProtect"
	)
	cd "MyOS PassProtect"
) else (
	cd..
	if exist "MyOS.bat" (
		if not exist "MyOS PassProtect" (
			mkdir "MyOS PassProtect"
		)
		cd "MyOS PassProtect"
	)
)
title MyOS - Password Protection
echo PassProtect - Version 1.0.0
echo.
echo 1 = Save a password (12 characters MAX)
echo 2 = View a password
echo 3 = Delete a password
if %PPRandomBlocked% == 0 (
echo 4 = Generate a random password
)
if %PPRandomBlocked% == 1 (
echo 4 = Generate a random password - please relaunch MyOS to use this feature once again
)
echo 5 = Exit
set /p Choice=Choice: 
if %Choice% == 1 goto PassProtectSave
if %Choice% == 2 goto PassProtectViewcheck
if %Choice% == 3 goto PassProtectDeletecheck
if %PPRandomBlocked% == 0 (
	if %Choice% == 4 goto PassProtectRandom
)
if %Choice% == 5 goto desktop
echo The choice is invalid.
timeout /T 1 /NOBREAK >nul
goto PassProtect
:PassProtectSave
cls
echo PassProtect - Version 1.0.0
echo.
echo Name the file to store the password. [Type "Exit" to exit]
set /p PassName=Name: 
if %PassName% == Exit goto PassProtect
goto PassChar1
:PassChar1
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the first character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=1 
goto PassSave
:PassChar2
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the second character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=2
goto PassSave
:PassChar3
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the third character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=3
goto PassSave
:PassChar4
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the fourth character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=4
goto PassSave
:PassChar5
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the fifth character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=5
goto PassSave
:PassChar6
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the sixth character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=6
goto PassSave
:PassChar7
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the seventh character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=7
goto PassSave
:PassChar8
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the eigth character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=8
goto PassSave
:PassChar9
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the ninth character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=9
goto PassSave
:PassChar10
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the tenth character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=10
goto PassSave
:PassChar11
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the eleventh character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=11
goto PassSave
:PassChar12
cls
echo PassProtect - Version 1.0.0
echo.
echo Type the twelveth character of your password. [Type "Space" to leave this character empty]
set /p PassChar=Character: 
set /a CharacterOrder=12
goto PassSave
:PassSave
if %PassChar% == Space set PassSave%CharacterOrder%=0x00
if %PassChar% == A set PassSave%CharacterOrder%=0x01
if %PassChar% == B set PassSave%CharacterOrder%=0x02
if %PassChar% == C set PassSave%CharacterOrder%=0x03
if %PassChar% == D set PassSave%CharacterOrder%=0x04
if %PassChar% == E set PassSave%CharacterOrder%=0x05
if %PassChar% == F set PassSave%CharacterOrder%=0x06
if %PassChar% == G set PassSave%CharacterOrder%=0x07
if %PassChar% == H set PassSave%CharacterOrder%=0x08
if %PassChar% == I set PassSave%CharacterOrder%=0x09
if %PassChar% == J set PassSave%CharacterOrder%=0x0A
if %PassChar% == K set PassSave%CharacterOrder%=0x0B
if %PassChar% == L set PassSave%CharacterOrder%=0x0C
if %PassChar% == M set PassSave%CharacterOrder%=0x0D
if %PassChar% == N set PassSave%CharacterOrder%=0x0E
if %PassChar% == O set PassSave%CharacterOrder%=0x0F
if %PassChar% == P set PassSave%CharacterOrder%=0x10
if %PassChar% == Q set PassSave%CharacterOrder%=0x11
if %PassChar% == R set PassSave%CharacterOrder%=0x12
if %PassChar% == S set PassSave%CharacterOrder%=0x13
if %PassChar% == T set PassSave%CharacterOrder%=0x14
if %PassChar% == U set PassSave%CharacterOrder%=0x15
if %PassChar% == V set PassSave%CharacterOrder%=0x16
if %PassChar% == W set PassSave%CharacterOrder%=0x17
if %PassChar% == X set PassSave%CharacterOrder%=0x18
if %PassChar% == Y set PassSave%CharacterOrder%=0x19
if %PassChar% == Z set PassSave%CharacterOrder%=0x1A
if %PassChar% == a set PassSave%CharacterOrder%=0x1B
if %PassChar% == b set PassSave%CharacterOrder%=0x1C
if %PassChar% == c set PassSave%CharacterOrder%=0x1D
if %PassChar% == d set PassSave%CharacterOrder%=0x1E
if %PassChar% == e set PassSave%CharacterOrder%=0x1F
if %PassChar% == f set PassSave%CharacterOrder%=0x20
if %PassChar% == g set PassSave%CharacterOrder%=0x21
if %PassChar% == h set PassSave%CharacterOrder%=0x22
if %PassChar% == i set PassSave%CharacterOrder%=0x23
if %PassChar% == j set PassSave%CharacterOrder%=0x24
if %PassChar% == k set PassSave%CharacterOrder%=0x25
if %PassChar% == l set PassSave%CharacterOrder%=0x26
if %PassChar% == m set PassSave%CharacterOrder%=0x27
if %PassChar% == n set PassSave%CharacterOrder%=0x28
if %PassChar% == o set PassSave%CharacterOrder%=0x29
if %PassChar% == p set PassSave%CharacterOrder%=0x2A
if %PassChar% == q set PassSave%CharacterOrder%=0x2B
if %PassChar% == r set PassSave%CharacterOrder%=0x2C
if %PassChar% == s set PassSave%CharacterOrder%=0x2D
if %PassChar% == t set PassSave%CharacterOrder%=0x2E
if %PassChar% == u set PassSave%CharacterOrder%=0x2F
if %PassChar% == v set PassSave%CharacterOrder%=0x30
if %PassChar% == v set PassSave%CharacterOrder%=0x31
if %PassChar% == x set PassSave%CharacterOrder%=0x32
if %PassChar% == y set PassSave%CharacterOrder%=0x33
if %PassChar% == z set PassSave%CharacterOrder%=0x34
if %PassChar% == 1 set PassSave%CharacterOrder%=0x35
if %PassChar% == 2 set PassSave%CharacterOrder%=0x36
if %PassChar% == 3 set PassSave%CharacterOrder%=0x37
if %PassChar% == 4 set PassSave%CharacterOrder%=0x38
if %PassChar% == 5 set PassSave%CharacterOrder%=0x39
if %PassChar% == 6 set PassSave%CharacterOrder%=0x3A
if %PassChar% == 7 set PassSave%CharacterOrder%=0x3B
if %PassChar% == 8 set PassSave%CharacterOrder%=0x3C
if %PassChar% == 9 set PassSave%CharacterOrder%=0x3D
if %PassChar% == 0 set PassSave%CharacterOrder%=0x3E
if %PassChar% == . set PassSave%CharacterOrder%=0x3F
if %PassChar% == _ set PassSave%CharacterOrder%=0x40
if %PassChar% == - set PassSave%CharacterOrder%=0x41
if %CharacterOrder% == 1 goto PassChar2
if %CharacterOrder% == 2 goto PassChar3
if %CharacterOrder% == 3 goto PassChar4
if %CharacterOrder% == 4 goto PassChar5
if %CharacterOrder% == 5 goto PassChar6
if %CharacterOrder% == 6 goto PassChar7
if %CharacterOrder% == 7 goto PassChar8
if %CharacterOrder% == 8 goto PassChar9
if %CharacterOrder% == 9 goto PassChar10
if %CharacterOrder% == 10 goto PassChar11
if %CharacterOrder% == 11 goto PassChar12
if %CharacterOrder% == 12 goto PassSaveFinish
:PassSaveFinish
cls
echo Wait please... MyOS is saving your password...
(
echo @echo off
echo echo %PassSave1% ^> %TMP%\PassChar1
echo echo %PassSave2% ^> %TMP%\PassChar2
echo echo %PassSave3% ^> %TMP%\PassChar3
echo echo %PassSave4% ^> %TMP%\PassChar4
echo echo %PassSave5% ^> %TMP%\PassChar5
echo echo %PassSave6% ^> %TMP%\PassChar6
echo echo %PassSave7% ^> %TMP%\PassChar7
echo echo %PassSave8% ^> %TMP%\PassChar8
echo echo %PassSave9% ^> %TMP%\PassChar9
echo echo %PassSave10% ^> %TMP%\PassChar10
echo echo %PassSave11% ^> %TMP%\PassChar11
echo echo %PassSave12% ^> %TMP%\PassChar12
) > %PassName%.myospassprotect
timeout /T 3 /NOBREAK >nul
goto PassProtect
:PassProtectViewcheck
IF %PasswordOn% == 100 (
cls
echo To read passwords, you need to confirm yourself
echo.
set /p PassCheck=Password: 
if %PassCheck% == %PassReal% goto PassProtectView
echo The password is not correct
timeout /T 1 /NOBREAK >nul
goto PassProtect
) else goto PassProtectView
:PassProtectView
cls
echo PassProtect - Version 1.0.0
echo.
echo Choose a file to open: [Type "Exit" to exit]
dir /b
set /p OpenPassword=File: 
if %OpenPassword% == Exit goto PassProtect
if exist %OpenPassword%.myospassprotect (
	cmd < %OpenPassword%.myospassprotect
	set /a CharacterOrder=0
	goto PassProtectOpen
)
echo This file doesn't exist
timeout /T 1 /NOBREAK >nul
goto PassProtectView
:PassProtectOpen
cls
echo Wait...
set /a CharacterOrder=%CharacterOrder%+1
set /p PassOut=<%TMP%\PassChar%CharacterOrder%
goto PassOpen
:PassOpen
if %PassOut% == 0x00 set "PassOutput%CharacterOrder%= "
if %PassOut% == 0x01 set PassOutput%CharacterOrder%=A
if %PassOut% == 0x02 set PassOutput%CharacterOrder%=B
if %PassOut% == 0x03 set PassOutput%CharacterOrder%=C
if %PassOut% == 0x04 set PassOutput%CharacterOrder%=D
if %PassOut% == 0x05 set PassOutput%CharacterOrder%=E
if %PassOut% == 0x06 set PassOutput%CharacterOrder%=F
if %PassOut% == 0x07 set PassOutput%CharacterOrder%=G
if %PassOut% == 0x08 set PassOutput%CharacterOrder%=H
if %PassOut% == 0x09 set PassOutput%CharacterOrder%=I
if %PassOut% == 0x0A set PassOutput%CharacterOrder%=J
if %PassOut% == 0x0B set PassOutput%CharacterOrder%=K
if %PassOut% == 0x0C set PassOutput%CharacterOrder%=L
if %PassOut% == 0x0D set PassOutput%CharacterOrder%=M
if %PassOut% == 0x0E set PassOutput%CharacterOrder%=N
if %PassOut% == 0x0F set PassOutput%CharacterOrder%=O
if %PassOut% == 0x10 set PassOutput%CharacterOrder%=P
if %PassOut% == 0x11 set PassOutput%CharacterOrder%=Q
if %PassOut% == 0x12 set PassOutput%CharacterOrder%=R
if %PassOut% == 0x13 set PassOutput%CharacterOrder%=S
if %PassOut% == 0x14 set PassOutput%CharacterOrder%=T
if %PassOut% == 0x15 set PassOutput%CharacterOrder%=U
if %PassOut% == 0x16 set PassOutput%CharacterOrder%=V
if %PassOut% == 0x17 set PassOutput%CharacterOrder%=W
if %PassOut% == 0x18 set PassOutput%CharacterOrder%=X
if %PassOut% == 0x19 set PassOutput%CharacterOrder%=Y
if %PassOut% == 0x1A set PassOutput%CharacterOrder%=Z
if %PassOut% == 0x1B set PassOutput%CharacterOrder%=a
if %PassOut% == 0x1C set PassOutput%CharacterOrder%=b
if %PassOut% == 0x1D set PassOutput%CharacterOrder%=c
if %PassOut% == 0x1E set PassOutput%CharacterOrder%=d
if %PassOut% == 0x1F set PassOutput%CharacterOrder%=e
if %PassOut% == 0x20 set PassOutput%CharacterOrder%=f
if %PassOut% == 0x21 set PassOutput%CharacterOrder%=g
if %PassOut% == 0x22 set PassOutput%CharacterOrder%=h
if %PassOut% == 0x23 set PassOutput%CharacterOrder%=i
if %PassOut% == 0x24 set PassOutput%CharacterOrder%=j
if %PassOut% == 0x25 set PassOutput%CharacterOrder%=k
if %PassOut% == 0x26 set PassOutput%CharacterOrder%=l
if %PassOut% == 0x27 set PassOutput%CharacterOrder%=m
if %PassOut% == 0x28 set PassOutput%CharacterOrder%=n
if %PassOut% == 0x29 set PassOutput%CharacterOrder%=o
if %PassOut% == 0x2A set PassOutput%CharacterOrder%=p
if %PassOut% == 0x2B set PassOutput%CharacterOrder%=q
if %PassOut% == 0x2C set PassOutput%CharacterOrder%=r
if %PassOut% == 0x2D set PassOutput%CharacterOrder%=s
if %PassOut% == 0x2E set PassOutput%CharacterOrder%=t
if %PassOut% == 0x2F set PassOutput%CharacterOrder%=u
if %PassOut% == 0x30 set PassOutput%CharacterOrder%=v
if %PassOut% == 0x31 set PassOutput%CharacterOrder%=w
if %PassOut% == 0x32 set PassOutput%CharacterOrder%=x
if %PassOut% == 0x33 set PassOutput%CharacterOrder%=y
if %PassOut% == 0x34 set PassOutput%CharacterOrder%=z
if %PassOut% == 0x35 set PassOutput%CharacterOrder%=1
if %PassOut% == 0x36 set PassOutput%CharacterOrder%=2
if %PassOut% == 0x37 set PassOutput%CharacterOrder%=3
if %PassOut% == 0x38 set PassOutput%CharacterOrder%=4
if %PassOut% == 0x39 set PassOutput%CharacterOrder%=5
if %PassOut% == 0x3A set PassOutput%CharacterOrder%=6
if %PassOut% == 0x3B set PassOutput%CharacterOrder%=7
if %PassOut% == 0x3C set PassOutput%CharacterOrder%=8
if %PassOut% == 0x3D set PassOutput%CharacterOrder%=9
if %PassOut% == 0x3E set PassOutput%CharacterOrder%=0
if %PassOut% == 0x3F set PassOutput%CharacterOrder%=.
if %PassOut% == 0x40 set PassOutput%CharacterOrder%=_
if %PassOut% == 0x41 set PassOutput%CharacterOrder%=-
if %CharacterOrder% == 12 goto PassOpenFinish
goto PassProtectOpen
:PassOpenFinish
cls
del %TMP%\PassChar1 /s /q >nul
del %TMP%\PassChar2 /s /q >nul
del %TMP%\PassChar3 /s /q >nul
del %TMP%\PassChar4 /s /q >nul
del %TMP%\PassChar5 /s /q >nul
del %TMP%\PassChar6 /s /q >nul
del %TMP%\PassChar7 /s /q >nul
del %TMP%\PassChar8 /s /q >nul
del %TMP%\PassChar9 /s /q >nul
del %TMP%\PassChar10 /s /q >nul
del %TMP%\PassChar11 /s /q >nul
del %TMP%\PassChar12 /s /q >nul
echo Password: %PassOutput1%%PassOutput2%%PassOutput3%%PassOutput4%%PassOutput5%%PassOutput6%%PassOutput7%%PassOutput8%%PassOutput9%%PassOutput10%%PassOutput11%%PassOutput12%
echo.
echo Press [ENTER] to continue
pause >nul
goto PassProtect
:PassProtectDeletecheck
IF %PasswordOn% == 100 (
cls
echo To read passwords, you need to confirm yourself
echo.
set /p PassCheck=Password: 
if %PassCheck% == %PassReal% goto PassProtectDelete
echo The password is not correct
timeout /T 1 /NOBREAK >nul
goto PassProtect
) else goto PassProtectDelete
:PassProtectDelete
cls
echo Choose a file to delete: [Type "Exit" to exit]
dir /b
set /p Delete=File: 
if %Delete% == Exit goto PassProtect
if exist %Delete%.myospassprotect (
	del %Delete%.myospassprotect
	echo Deleting the password "%Delete%"
	timeout /T 1 /NOBREAK >nul
	goto PassProtect
)
echo This file doesn't exist
timeout /T 1 /NOBREAK >nul
goto PassProtectDelete
:PassProtectRandom
cls
echo Wait please until we generate a password...
set "PassRandom1="
set "PassRandom2="
set "PassRandom3="
set "PassRandom4="
set "PassRandom5="
set "PassRandom6="
set "PassRandom7="
set "PassRandom8="
set "PassRandom9="
set "PassRandom10="
set "PassRandom11="
set "PassRandom12="
set /a CharacterOrder=0
goto PassProtectRandomLoop

:PassProtectRandomLoop
Setlocal EnableDelayedExpansion
Set _RNDLength=1
Set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET PassRandom%CharacterOrder%=
:_loop
set /a CharacterOrder=%CharacterOrder%+1
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET PassRandom%CharacterOrder%=!PassRandom%CharacterOrder%!!_Alphanumeric:~%_RND%,1!

if not errorlevel 0 goto errorcode
if not %CharacterOrder% == 12 goto _loop
if %CharacterOrder% == 12 goto PassProtectRandomFinish

:PassProtectRandomFinish
set /a PPRandomBlocked=1
cls
echo PassProtect - Version 1.0.0
echo.
echo Your Random Password Is: %PassRandom1%%PassRandom2%%PassRandom3%%PassRandom4%%PassRandom5%%PassRandom6%%PassRandom7%%PassRandom8%%PassRandom9%%PassRandom10%%PassRandom11%%PassRandom12%
echo.
echo What do you want to do?
echo 1 = Save the password
echo 2 = Exit without saving
set /p Choice=Choice: 
if %Choice% == 1 goto PassProtectRandomSave
if %Choice% == 2 goto PassProtect
echo The choice is invalid.
if not errorlevel 0 goto errorcode
timeout /T 1 /NOBREAK >nul
goto PassProtectRandomFinish
:PassProtectRandomSave
cls
echo PassProtect - Version 1.0.0
echo.
echo Name the file to store the password. [Type "Exit" to exit]
set /p PassName=Name: 
set /a CharacterOrder=0
goto PassProtectRandomSaveLoop
:PassProtectRandomSaveLoop
set /a CharacterOrder=%CharacterOrder%+1
goto PassProtectSaveL
:PassProtectSaveL
Setlocal EnableDelayedExpansion
if !PassRandom%CharacterOrder%! == A set PassSave%CharacterOrder%=0x01
if !PassRandom%CharacterOrder%! == B set PassSave%CharacterOrder%=0x02
if !PassRandom%CharacterOrder%! == C set PassSave%CharacterOrder%=0x03
if !PassRandom%CharacterOrder%! == D set PassSave%CharacterOrder%=0x04
if !PassRandom%CharacterOrder%! == E set PassSave%CharacterOrder%=0x05
if !PassRandom%CharacterOrder%! == F set PassSave%CharacterOrder%=0x06
if !PassRandom%CharacterOrder%! == G set PassSave%CharacterOrder%=0x07
if !PassRandom%CharacterOrder%! == H set PassSave%CharacterOrder%=0x08
if !PassRandom%CharacterOrder%! == I set PassSave%CharacterOrder%=0x09
if !PassRandom%CharacterOrder%! == J set PassSave%CharacterOrder%=0x0A
if !PassRandom%CharacterOrder%! == K set PassSave%CharacterOrder%=0x0B
if !PassRandom%CharacterOrder%! == L set PassSave%CharacterOrder%=0x0C
if !PassRandom%CharacterOrder%! == M set PassSave%CharacterOrder%=0x0D
if !PassRandom%CharacterOrder%! == N set PassSave%CharacterOrder%=0x0E
if !PassRandom%CharacterOrder%! == O set PassSave%CharacterOrder%=0x0F
if !PassRandom%CharacterOrder%! == P set PassSave%CharacterOrder%=0x10
if !PassRandom%CharacterOrder%! == Q set PassSave%CharacterOrder%=0x11
if !PassRandom%CharacterOrder%! == R set PassSave%CharacterOrder%=0x12
if !PassRandom%CharacterOrder%! == S set PassSave%CharacterOrder%=0x13
if !PassRandom%CharacterOrder%! == T set PassSave%CharacterOrder%=0x14
if !PassRandom%CharacterOrder%! == U set PassSave%CharacterOrder%=0x15
if !PassRandom%CharacterOrder%! == V set PassSave%CharacterOrder%=0x16
if !PassRandom%CharacterOrder%! == W set PassSave%CharacterOrder%=0x17
if !PassRandom%CharacterOrder%! == X set PassSave%CharacterOrder%=0x18
if !PassRandom%CharacterOrder%! == Y set PassSave%CharacterOrder%=0x19
if !PassRandom%CharacterOrder%! == Z set PassSave%CharacterOrder%=0x1A
if !PassRandom%CharacterOrder%! == a set PassSave%CharacterOrder%=0x1B
if !PassRandom%CharacterOrder%! == b set PassSave%CharacterOrder%=0x1C
if !PassRandom%CharacterOrder%! == c set PassSave%CharacterOrder%=0x1D
if !PassRandom%CharacterOrder%! == d set PassSave%CharacterOrder%=0x1E
if !PassRandom%CharacterOrder%! == e set PassSave%CharacterOrder%=0x1F
if !PassRandom%CharacterOrder%! == f set PassSave%CharacterOrder%=0x20
if !PassRandom%CharacterOrder%! == g set PassSave%CharacterOrder%=0x21
if !PassRandom%CharacterOrder%! == h set PassSave%CharacterOrder%=0x22
if !PassRandom%CharacterOrder%! == i set PassSave%CharacterOrder%=0x23
if !PassRandom%CharacterOrder%! == j set PassSave%CharacterOrder%=0x24
if !PassRandom%CharacterOrder%! == k set PassSave%CharacterOrder%=0x25
if !PassRandom%CharacterOrder%! == l set PassSave%CharacterOrder%=0x26
if !PassRandom%CharacterOrder%! == m set PassSave%CharacterOrder%=0x27
if !PassRandom%CharacterOrder%! == n set PassSave%CharacterOrder%=0x28
if !PassRandom%CharacterOrder%! == o set PassSave%CharacterOrder%=0x29
if !PassRandom%CharacterOrder%! == p set PassSave%CharacterOrder%=0x2A
if !PassRandom%CharacterOrder%! == q set PassSave%CharacterOrder%=0x2B
if !PassRandom%CharacterOrder%! == r set PassSave%CharacterOrder%=0x2C
if !PassRandom%CharacterOrder%! == s set PassSave%CharacterOrder%=0x2D
if !PassRandom%CharacterOrder%! == t set PassSave%CharacterOrder%=0x2E
if !PassRandom%CharacterOrder%! == u set PassSave%CharacterOrder%=0x2F
if !PassRandom%CharacterOrder%! == v set PassSave%CharacterOrder%=0x30
if !PassRandom%CharacterOrder%! == v set PassSave%CharacterOrder%=0x31
if !PassRandom%CharacterOrder%! == x set PassSave%CharacterOrder%=0x32
if !PassRandom%CharacterOrder%! == y set PassSave%CharacterOrder%=0x33
if !PassRandom%CharacterOrder%! == z set PassSave%CharacterOrder%=0x34
if !PassRandom%CharacterOrder%! == 1 set PassSave%CharacterOrder%=0x35
if !PassRandom%CharacterOrder%! == 2 set PassSave%CharacterOrder%=0x36
if !PassRandom%CharacterOrder%! == 3 set PassSave%CharacterOrder%=0x37
if !PassRandom%CharacterOrder%! == 4 set PassSave%CharacterOrder%=0x38
if !PassRandom%CharacterOrder%! == 5 set PassSave%CharacterOrder%=0x39
if !PassRandom%CharacterOrder%! == 6 set PassSave%CharacterOrder%=0x3A
if !PassRandom%CharacterOrder%! == 7 set PassSave%CharacterOrder%=0x3B
if !PassRandom%CharacterOrder%! == 8 set PassSave%CharacterOrder%=0x3C
if !PassRandom%CharacterOrder%! == 9 set PassSave%CharacterOrder%=0x3D
if !PassRandom%CharacterOrder%! == 0 set PassSave%CharacterOrder%=0x3E
if not %CharacterOrder% == 12 goto PassProtectRandomSaveLoop
if %CharacterOrder% == 12 goto PassSaveFinish
:SDKCheck
cls
if not exist MyOS.bat cd..
echo Please wait until we check if the SDK is installed...
find "%TestSDK%%TestSDK2%" MyOS.bat && (
	goto SDKStart
) || (
	echo MyOS doesn't have a SDK installed.
	timeout /T 1 /NOBREAK >nul
	set U=USER
	goto desktop
)
:errorORANGE
timeout /T 3 /NOBREAK >nul
cls
echo FAIL: %app% Is Uncompatible
timeout /T 0 /NOBREAK >nul
echo FAIL: MyOS Version %version% is too new.
timeout /T 5 /NOBREAK >nul
echo Trying to keep MyOS awake ^|
timeout /T 0 /NOBREAK >nul
cls
echo FAIL: %app% Is Uncompatible
echo FAIL: MyOS Version %version% is too new.
echo Trying to keep MyOS awake \
timeout /T 0 /NOBREAK >nul
cls
echo FAIL: %app% Is Uncompatible
echo FAIL: MyOS Version %version% is too new.
echo Trying to keep MyOS awake -
timeout /T 0 /NOBREAK >nul
cls
echo FAIL: %app% Is Uncompatible
echo FAIL: MyOS Version %version% is too new.
echo Trying to keep MyOS awake /
timeout /T 0 /NOBREAK >nul
cls
echo FAIL: %app% Is Uncompatible
echo FAIL: MyOS Version %version% is too new.
echo Trying to keep MyOS awake ^|
timeout /T 0 /NOBREAK >nul
cls
echo FAIL: %app% Is Uncompatible
echo FAIL: MyOS Version %version% is too new.
echo Trying to keep MyOS awake \
timeout /T 0 /NOBREAK >nul
cls
echo FAIL: %app% Is Uncompatible
echo FAIL: MyOS Version %version% is too new.
echo Fail: MyOS Will Shut Down To Prevent Damage
timeout /T 2 /NOBREAK >nul
cls
echo.
echo Your Device Failed to Jailbreak! Please use a newer version of %app%
echo.
echo Restarting MyOS in 3
timeout /T 1 /NOBREAK >nul
cls
echo.
echo Your Device Failed to Jailbreak! Please use a newer version of %app%
echo.
echo Restarting MyOS in 2
timeout /T 1 /NOBREAK >nul
cls
echo.
echo Your Device Failed to Jailbreak! Please use a newer version of %app%
echo.
echo Restarting MyOS in 1
timeout /T 1 /NOBREAK >nul
goto BOOT
:shutmenu
cls
title MyOS - Shutdown Menu
echo Choose the option to turn off the computer.
echo 1 - Shutdown
echo 2 - Restart
echo 3 - Log Off
echo 4 - Exit
set /p Choice=Option 
if %Choice% == 1 exit
if %Choice% == 2 goto boot
if %Choice% == 3 goto login
if %Choice% == 4 goto desktop
echo Invalid Option. Choose between [1], [2], [3] or [4].
timeout /T 1 /NOBREAK >nul
goto shutmenu
:GuestCheck
if %GuestModeAllow% == 100 goto gdesk
echo Cannot Proceed To Guest Mode. It may be disabled or corrupted.
timeout /T 2 /NOBREAK >nul
goto login
:gdesk
title MyOS - GUEST - Desktop
cls
echo Welcome, Guest. Choose a program to run.
set /a CoronaHint=%random%
echo Welcome, %U%. Choose a program you wish to run.
if %CoronaHint% lss 1000 echo Hint: Wash your hands regularly!
if %CoronaHint% gtr 1000 if %CoronaHint% lss 3000 echo Hint: Don't touch your face with your hands!
if %CoronaHint% gtr 3000 if %CoronaHint% lss 5000 echo Hint: Stay at home!
if %CoronaHint% gtr 5000 if %CoronaHint% lss 7000 echo Hint: Be healthy!
if %CoronaHint% gtr 7000 if %CoronaHint% lss 9000 echo Hint: Don't panic!
if %CoronaHint% gtr 9000 echo Hint: Keep the distance of at least 2 meters!
if %GuestCalc% == 100 (
	echo 1 = Calculator
)
if %GuestCalc% == 123 (
	echo 1 = Calculator - BLOCKED
)
if %GuestChange% == 100 (
	echo 2 = Changelog
)
if %GuestChange% == 123 (
	echo 2 = Changelog - BLOCKED
)
if %Guest3PLaunch% == 100 (
	echo 3 = 3rd Party Launcher
)
if %Guest3PLaunch% == 123 (
	echo 3 = 3rd Party Launcher - BLOCKED
)
if %GuestTextPad% == 100 (
	echo 4 = Text Pad
)
if %GuestTextPad% == 123 (
	echo 4 = TextPad - BLOCKED
)
if %GuestSettings% == 100 (
	echo 5 = Settings
)
if %GuestSettings% == 123 (
	echo 5 = Settings - BLOCKED
)
if %GuestReleases% == 100 (
	echo 6 = GitHub Releases
)
if %GuestReleases% == 123 (
	echo 6 = GitHub Releases - BLOCKED
)
if %GuestMP3Player% == 100 (
	echo 7 = MP3 Player
)
if %GuestMP3Player% == 123 (
	echo 7 = MP3 Player - BLOCKED
)
echo 8 = Log In
echo 9 = Shutdown Menu
set /p Choice=Program: 
if %Choice% == 1 goto gcalccheck
if %Choice% == 2 goto gchangecheck
if %Choice% == 3 goto g3pcheck
if %Choice% == 4 goto gtextcheck
if %Choice% == 5 goto gsettingscheck
if %Choice% == 6 goto greleasescheck
if %Choice% == 7 goto gmp3playercheck
if %Choice% == 8 goto login
if %Choice% == 9 goto gshutmenu
echo Invalid Command. Please choose between a valid one
timeout /T 1 /NOBREAK >nul
goto gdesk
:gcalccheck
if %GuestCalc% == 100 goto gcalc
echo This application is blocked by the current administrator.
timeout /T 1 /NOBREAK >nul
goto gdesk
:gchangecheck
if %GuestChange% == 100 goto gchange
echo This application is blocked by the current administrator.
timeout /T 1 /NOBREAK >nul
goto gdesk
:g3pcheck
if %Guest3PLaunch% == 100 goto g3plaunch
echo This application is blocked by the current administrator.
timeout /T 1 /NOBREAK >nul
goto gdesk
:gtextcheck
if %GuestTextPad% == 100 goto gtextpad
echo This application is blocked by the current administrator.
timeout /T 1 /NOBREAK >nul
goto gdesk
:gsettingscheck
if %GuestSettings% == 100 goto gsettings
echo This application is blocked by the current administrator.
timeout /T 1 /NOBREAK >nul
goto gdesk
:greleasescheck
if %GuestReleases% == 100 goto greleases
echo This application is blocked by the current administrator.
timeout /T 1 /NOBREAK >nul
goto gdesk
:gmp3playercheck
if %GuestMP3Player% == 100 goto gmp3player
echo This application is blocked by the current administrator.
timeout /T 1 /NOBREAK >nul
goto gdesk
:gcalc
title MyOS - GUEST - Calculator
cls
timeout /T 1 /NOBREAK >nul
echo Calculator - Version 1
echo 1 = Addition
echo 2 = Substraction
echo 3 = Multiplication
echo 4 = Division
echo 5 = Multi-Solve
echo 6 = Exit
set /p Sign=Number 
if %Sign% == 1 goto gadd
if %Sign% == 2 goto gsubstr
if %Sign% == 3 goto gmulti
if %Sign% == 4 goto gdiv
if %Sign% == 5 goto gmulso
if %Sign% == 6 goto gdesk
echo Unknown command. Please choose a correct command.
timeout /T 1 /NOBREAK >nul
goto CALC
:gadd
cls
echo Please choose 2 numbers you wish to add
set /p num1=
set /p num2=%num1%+
set /a Answer=%num1%+%num2%
echo %num1%+%num2%=%answer%
pause >nul
goto gcalc
:gsubstr
cls
echo Please choose 2 numbers you wish to substract
set /p num1=
set /p num2=%num1%-
set /a Answer=%num1%-%num2%
echo %num1%-%num2%=%answer%
pause >nul
goto gcalc
:gmulti
cls
echo Please choose 2 numbers you wish to multiply
set /p num1=
set /p num2=%num1%*
set /a Answer=%num1%*%num2%
echo %num1%*%num2%=%answer%
pause >nul
goto gcalc
:gdiv
cls
echo Please choose 2 numbers you wish to divide
set /p num1=
set /p num2=%num1%/
set /a Answer=%num1%/%num2%
echo %num1%/%num2%=%answer%
pause >nul
goto gcalc
:gmulso
cls
echo Type the exercise you wish to solve
echo Addition = +
echo Substraction = -
echo Multiplication = *
echo Division = /
set /p EX=
set /a Answer=%EX%
echo %EX%=%Answer%
pause >nul
goto gcalc
:gchange
cls
title MyOS - GUEST - Changelog
echo Version 0.0.1
echo The first alpha version of the OS
echo Version 0.0.2
echo New System App: Text Editor.
echo Version 0.0.3 
echo Added "MyOS App Sample" and "ReadME MyOS". Introduced "MyOS App Launcher".
echo Version 0.1.0 (BETA 1)
echo The Kernel is updated. Added Multi-Solve in Calculator. Deleted Log Off option because of a bug.
echo Version 0.1.1 (BETA 1.1)
echo Readded Logoff. Now "Text Editor" and "3rd Party Launcher" don't have unneeded text while choosing a file.
echo Version 0.2.0 (BETA 2)
echo Updated Kernel. Added Settings. You can change system colour and time with date! P.S. To Change time or date, use administrator privilages.
echo Version 0.2.1 (BETA 2.1)
echo The 3RD Party App Launcher now supports CMD apps!
echo Version 0.3.0 (Release Candidate 1)
echo Github Releases are easy accesible from Desktop! The guest mode was added!
echo Version 0.4.0 (Release Candidate 2)
echo Little update. Now all the empty choices won't crash the system.
echo Version 1.0.0
echo The first stable release of MyOS! The Safe Mode was added in case if normal mode is corrupted.
echo Version 1.1.0
echo Now Safe Mode can recover the system, but it requires internet connection and browser availability.
echo Version 1.1.1
echo Bug-Fixes. Now the restore downloads the latest update.
echo Version 1.1.2
echo Now you can update the system using the Update Option.
echo Version 1.2.0
echo Now you can change User Properties. The Update Option was moved to settings.
echo.
echo Press [ENTER] for the next page
pause >nul
cls
echo Version 1.2.0
echo Now you can change User Properties. The Update Option was moved to settings.
echo Version 1.2.1
echo Bug-Fixes. Now you should confirm yourself when logging in Safe Mode
echo Version 1.3.0
echo Better folder recognition in 3PStore and TextPad. Text fix in Settings.
echo Version 1.4.0
echo Bug Fixes. Now apps detect if the file(s) exist.
echo Version 1.4.1
echo Bug Fixes.
echo Version 1.5.0
echo The App_Sample is no longer in the archive. MyOS will automatically generate some of the folders.
echo Version 1.6.0
echo Now the Guest Settings change a lot faster and easier! You can turn off the password!
echo Version 1.7.0
echo Merry Christmas! Now you can change the hint! The password changing to 0 bug was fixed!
echo Version 1.8.0
echo Bug Fixes. Now Text Pad is available in Safe Mode.
echo Version 1.9.0
echo The first release in 2020! The kernel was updated to version 1.2.0.
echo Version 2.0.0
echo + BioProtect! Block with a password the system apps of MyOS
echo + MP3 Player! Play your favourite songs in MyOS
echo + PassProtect! Save your Passwords in files, accecible only in MyOS.
echo + Turn Off Safe Mode! If you don't need it, then you can still turn it off!
echo Press [ENTER] for the next page
pause >nul
cls
echo Version 2.0.1
echo Settings Configurations! Set your settings everytime you boot.
echo Version 2.0.2
echo You can type up to 12 lines in Text Pad.
echo Version 2.1.0
echo + You can type up to 60 lines in Text Pad.
echo + The New Text Pad is avaiable in Safe Mode.
echo Version 2.2.0
echo + Fixed PassProtect Open Function
echo + PassProtect needs confirmation to delete passwords.
echo + Added hints for COVID-19
pause >nul
goto gdesk
:g3plaunch
cls
if exist "MyOS.bat" (
	if not exist "MyOS Applications" (
		mkdir "MyOS Applications"
	)
	cd "MyOS Applications"
) else (
	cd..
	if exist "MyOS.bat" (
		if not exist "MyOS Applications" (
			mkdir "MyOS Applications"
		)
		cd "MyOS Applications"
	)
)
title MyOS - GUEST - 3rd Party App Launcher
echo 3rd Party App Launcher Version 1.0.0
echo Please choose an application to run. (Without file extension) (Type [1] to exit)
dir /b
set /p App=App Name: 
if %App% == 1 goto gdesk
if not exist %App%.bat (
	if not exist %App%.cmd (
		echo This application does not exist. Please choose another one.
		timeout /T 1 /NOBREAK >nul
		goto g3plaunch
	)
)
if exist %App%.cmd (
	start %App%.cmd
)
if exist %App%.bat (
	start %App%.bat
)
goto gdesk
:gtextpad
cls
if exist "MyOS.bat" (
	if not exist "MyOS Text Files" (
		mkdir "MyOS Text Files"
	)
	cd "MyOS Text Files"
) else (
	cd..
	if exist "MyOS.bat" (
		if not exist "MyOS Text Files" (
			mkdir "MyOS Text Files"
		)
		cd "MyOS Text Files"
	)
)
title MyOS - GUEST - Text Pad
echo Text Editor version 1.0.0
echo 1 = Create a new text file.
echo 2 = View existing text files.
echo 3 = Delete an existing file.
echo 4 = Exit
set /p Choice=Command 
if %Choice% == 1 goto gcreatetext
if %Choice% == 2 goto gviewtext
if %Choice% == 3 goto gdeltext
if %Choice% == 4 goto gdesk
echo Invalid command. Please choose between existing commands.
timeout /T 1 /NOBREAK >nul
goto gtextpad
:gcreatetext
cls
echo Please type the name of the text file you want to make. (It can't contain spaces) (Type [1] to exit)
set /p N=Name: 
if %N% == 1 goto gtextpad
cls
echo Write the text of the file. (You can't use [ENTER])
set /p W=
echo %W% > %N%.txt
timeout /T 0 /NOBREAK >nul
goto gtextpad
:gviewtext
cls
echo Type the name of the file you wish to open (without file extension) (Type [1] to exit)
dir /b
set /p open=File Name 
if %open% == 1 goto gtextpad
if exist %open%.txt (
	notepad %open%
	pause >nul
	goto gtextpad
) else (
	echo The file does not exist.
	timeout /T 1 /NOBREAK >nul
	goto gviewtext
)
:gdeltext
cls
echo Type the name of the file you wish to delete (without file extension) (Type [1] to exit)
dir /b
set /p delete=File Name 
if %delete% == 1 goto TEXTMENU
if exist %delete%.txt (
	del %delete%.txt /s /q >nul
	echo Deleting %delete.txt%
	timeout /T 1 /NOBREAK >nul
	goto gtextpad
) else (
	echo The file does not exist.
	timeout /T 1 /NOBREAK >nul
	goto gdeltext
)
:gsettings
cls
title MyOS - GUEST - Settings
echo Settings - Version 2.0.0
echo 1 = System Colour
echo 2 = Exit
set /p Choice=Command 
if %Choice% == 1 goto gccolor
if %Choice% == 2 goto gdesk
echo Invalid Command. 
timeout /T 1 /NOBREAK >nul
goto gsettings
:gccolor
cls
echo Choose the new color for your system
echo Here's the full list of the Operating System colour:
echo 0 - Black        8 - Gray
echo 1 - Dark-Blue    9 - Light-Blue
echo 2 - Green        A - Light-Green
echo 3 - Blue         B - Very Light Blue
echo 4 - Red          C - Light-Red
echo 5 - Purple       D - Light-Purple
echo 6 - Yellow       E - Light-Yellow
echo 7 - Light-Gray   F - White
echo Type like this: 38 (Blue Background And Gray Text)
set /p Color=Your Colour: 
color %Color%
timeout /T 0 /NOBREAK >nul
goto gsettings
:greleases
start www.github.com/Duckloveshack/MyOS/releases 
goto gdesk
:gmp3player
cls
title MyOS - GUEST - MP3 Player
if %NowPlaying% == 1 goto MP3Play
if %NowPlaying% == 2 goto MP3PlayLoop
set /a NowPlaying=0
cls
if exist "MyOS.bat" (
	if not exist "MyOS MP3 Files" (
		mkdir "MyOS MP3 Files"
	)
	cd "MyOS MP3 Files"
) else (
	cd..
	if exist "MyOS.bat" (
		if not exist "MyOS MP3 Files" (
			mkdir "MyOS MP3 Files"
		)
		cd "MyOS MP3 Files"
	)
)
echo MP3 Player - Version 1.0.0
echo This product is still in development, wait for 2.0.0 to be released.
echo.
echo Choose a soundtrack to play: [Add "-loop" to make the song infinetly loop] [Type with the extension (EX: .mp3, .wav)] [Type [1] to exit]
echo Example: test.mp3loop
echo.
dir /b
set /p Song=Song: 
if %Song% == 1 goto gdesk
if exist %Song% (
	(echo %Song% | findstr /i /c:"loop" >nul) && (goto gMP3PlayLoopVBS) || (goto gMP3PlayVBS)
)
if exist %Song:loop=% (
	(echo %Song% | findstr /i /c:"loop" >nul) && (goto gMP3PlayLoopVBS) || (goto gMP3PlayVBS)
)
echo This song doesn't exist or has a lack of the extension. Please try again later.
timeout /T 1 /NOBREAK >nul
goto gmp3player
:gMP3PlayVBS
set /a NowPlaying=1
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%Song%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >%Song%.vbs
start /min %Song%.vbs
goto gMP3Play
:gMP3PlayLoopVBS
set /a NowPlaying=2
(
echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
echo Sound.URL = "%Song:loop=%"
echo Sound.Controls.play
echo do while Sound.currentmedia.duration = 0
echo wscript.sleep 100
echo loop
echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000
) > %Song:loop=%.vbs
(
echo @echo off
echo title MyOS_MP3_Loop_Assistant
echo :loop
echo start /wait /min %Song:loop=%.vbs
echo goto loop
) > %Song:loop=%.bat
start /min %Song:loop=%.bat
goto gMP3PlayLoop
:gMP3Play
cls
title MyOS - GUEST - MP3 Player - Now Playing %Song%
echo MP3 Player - Version 1.0.0
echo Do not close MyOS without turning off the music.
echo Now Playing - %song%
echo.
echo What are you going to do?
echo 1 = Stop the song
echo 2 = Stop and Exit
set /p Choice=Choice: 
if %Choice% == 1 (
	set /a NowPlaying=0
	taskkill /f /im wscript.exe
	del %song%.vbs
	goto gMP3PLAYER
)
if %Choice% == 2 (
	set /a NowPlaying=0
	taskkill /f /im wscript.exe
	del %song%.vbs
	goto gdesk
)
echo This choice is undefined.
timeout /T 1 /NOBREAK >nul
goto gMP3Play
:gMP3PlayLoop
cls
title MyOS - GUEST - MP3 Player - Now Playing: %Song:loop=%
echo MP3 Player - Version 1.0.0
echo Do not close MyOS without turning off the looping music.
echo Now Playing - %Song:loop=%
echo.
echo What are you going to do?
echo 1 = Stop the song
echo 2 = Stop and Exit
set /p Choice=Choice: 
if %Choice% == 1 (
	set /a NowPlaying=0
	taskkill /f /fi "windowtitle eq MyOS_MP3_Loop_Assistant"
	taskkill /f /im wscript.exe
	del %Song:loop=%.vbs
	del %Song:loop=%.bat
	goto gMP3PLAYER
)
if %Choice% == 2 (
	set /a NowPlaying=0
	taskkill /f /fi "windowtitle eq MyOS_MP3_Loop_Assistant"
	taskkill /f /im wscript.exe
	del %Song:loop=%.vbs
	del %Song:loop=%.bat
	goto gdesk
)
echo This choice is undefined.
timeout /T 1 /NOBREAK >nul
goto gMP3PlayLoop
:gshutmenu
cls
title MyOS - GUEST - Shutdown Menu
echo Choose the option to turn off the computer.
echo 1 - Shutdown
echo 2 - Restart
echo 3 - Exit
set /p Choice=Option 
if %Choice% == 1 exit
if %Choice% == 2 goto boot
if %Choice% == 3 goto gdesk
echo Invalid Option. Choose between [1], [2] or [3].
timeout /T 1 /NOBREAK >nul
goto gshutmenu
:sboot
cls
timeout /T 1 /NOBREAK >nul
title MyOS - Safe Mode
echo MyOS is starting up...
timeout /T 0 /NOBREAK >nul
echo Entering Safe Mode...
timeout /T 2 /NOBREAK >nul
echo File Found: C:\System\SYS\GInterface.dll
timeout /T 0 /NOBREAK >nul
echo File Found: C:\System\Fonts\Default.ttf
timeout /T 0 /NOBREAK >nul
echo File Found: C:\System\SYS\32_64deskplore.sys
timeout /T 0 /NOBREAK >nul
echo File Found: C:\System\SYS\SafeModeRepair.prog
timeout /T 0 /NOBREAK >nul
echo File Found: C:\System\SYS\Choice.UI
timeout /T 0 /NOBREAK >nul
echo File Found: C:\System\SYS\Apps.gui
timeout /T 0 /NOBREAK >nul
echo File Found: C:\System\SYS\SMFileFind.sys
timeout /T 0 /NOBREAK >nul
echo File Found: C:\System\SYS\Login.dpack
timeout /T 0 /NOBREAK >nul
echo Folder Found: C:\System\SYSTEM
timeout /T 0 /NOBREAK >nul
echo Folder Found: C:\DATA\User\USERNAME
timeout /T 2 /NOBREAK >nul
cls
goto schecklog
:schecklog
cls
echo To check if you're the administrator, please type your password. (Press [1] for hint)
set /p PassLogin=
if %PassLogin% == %PassReal% goto sdeskt
if %PassLogin% == 1 goto shintlog
echo The Password is incorrect. Please try again.
timeout /T 1 /NOBREAK >nul
goto schecklog
:shintlog
cls
echo To check if you're the administrator, please type your password.
echo Hint: %Hint%
set /p PassLogin=
if %PassLogin% == %PassReal% goto sdeskt
echo The Password is incorrect. Please try again.
timeout /T 1 /NOBREAK >nul
goto schecklog
:sdeskt
cls
set /a PassLogin=0
title MyOS - Safe Mode Desktop
echo Welcome To Safe-Mode. In this mode, the system checks for errors caused it to crash. Please choose something to run:
set /a CoronaHint=%random%
echo Welcome, %U%. Choose a program you wish to run.
if %CoronaHint% lss 1000 echo Hint: Wash your hands regularly!
if %CoronaHint% gtr 1000 if %CoronaHint% lss 3000 echo Hint: Don't touch your face with your hands!
if %CoronaHint% gtr 3000 if %CoronaHint% lss 5000 echo Hint: Stay at home!
if %CoronaHint% gtr 5000 if %CoronaHint% lss 7000 echo Hint: Be healthy!
if %CoronaHint% gtr 7000 if %CoronaHint% lss 9000 echo Hint: Don't panic!
if %CoronaHint% gtr 9000 echo Hint: Keep the distance of at least 2 meters!
echo 1 = Calculator
echo 2 = Changelog
echo 3 = Settings
echo 4 = Text Pad
echo 5 = 3rd Party Launcher
echo 6 = Fix and Update
echo 7 = Reboot
set /p Choice=Command: 
if %Choice% == 1 goto scal
if %Choice% == 2 goto schang
if %Choice% == 3 goto sset
if %Choice% == 4 goto stextp
if %Choice% == 5 goto s3rdMart
if %Choice% == 6 goto FIX
if %Choice% == 7 goto boot
echo Invalid Command.
timeout /T 1 /NOBREAK >nul
goto sdeskt
:scal
title MyOS - Calculator
cls
timeout /T 1 /NOBREAK >nul
echo Calculator - Version 1.0.0
echo 1 = Addition
echo 2 = Substraction
echo 3 = Multiplication
echo 4 = Division
echo 5 = Multi-Solve
echo 6 = Exit
set /p Sign=Number 
if %Sign% == 1 goto sadd
if %Sign% == 2 goto ssubstr
if %Sign% == 3 goto smulti
if %Sign% == 4 goto sdiv
if %Sign% == 5 goto smulso
if %Sign% == 6 goto sdeskt
echo Invalid Command.
timeout /T 1 /NOBREAK >nul
goto scal
:sadd
cls
echo Please choose 2 numbers you wish to add
set /p num1=
set /p num2=%num1%+
set /a Answer=%num1%+%num2%
echo %num1%+%num2%=%answer%
pause >nul
goto scal
:ssubstr
cls
echo Please choose 2 numbers you wish to substract
set /p num1=
set /p num2=%num1%-
set /a Answer=%num1%-%num2%
echo %num1%-%num2%=%answer%
pause >nul
goto scal
:smulti
cls
echo Please choose 2 numbers you wish to multiply
set /p num1=
set /p num2=%num1%*
set /a Answer=%num1%*%num2%
echo %num1%*%num2%=%answer%
pause >nul
goto scal
:sdiv
cls
echo Please choose 2 numbers you wish to divide
set /p num1=
set /p num2=%num1%/
set /a Answer=%num1%/%num2%
echo %num1%/%num2%=%answer%
pause >nul
goto scal
:smulso
cls
echo Type the exercise you wish to solve
echo Addition = +
echo Substraction = -
echo Multiplication = *
echo Division = /
set /p EX=
set /a Answer=%EX%
echo %EX%=%Answer%
pause >nul
goto scal
:schang
cls
title MyOS - Changelog
echo Version 0.0.1
echo The first alpha version of the OS
echo Version 0.0.2
echo New System App: Text Editor.
echo Version 0.0.3 
echo Added "MyOS App Sample" and "ReadME MyOS". Introduced "MyOS App Launcher".
echo Version 0.1.0 (BETA 1)
echo The Kernel is updated. Added Multi-Solve in Calculator. Deleted Log Off option because of a bug.
echo Version 0.1.1 (BETA 1.1)
echo Readded Logoff. Now "Text Editor" and "3rd Party Launcher" don't have unneeded text while choosing a file.
echo Version 0.2.0 (BETA 2)
echo Updated Kernel. Added Settings. You can change system colour and time with date! P.S. To Change time or date, use administrator privilages.
echo Version 0.2.1 (BETA 2.1)
echo The 3RD Party App Launcher now supports CMD apps!
echo Version 0.3.0 (Release Candidate 1)
echo Github Releases are easy accesible from Desktop! The guest mode was added!
echo Version 0.4.0 (Release Candidate 2)
echo Little update. Now all the empty choices won't crash the system.
echo Version 1.0.0
echo The first stable release of MyOS! The Safe Mode was added in case if normal mode is corrupted.
echo Version 1.1.0
echo Now Safe Mode can recover the system, but it requires internet connection and browser availability.
echo Version 1.1.1
echo Bug-Fixes. Now the restore downloads the latest update.
echo Version 1.1.2
echo Now you can update the system using the Update Option.
echo Version 1.2.0
echo Now you can change User Properties. The Update Option was moved to settings.
echo.
echo Press [ENTER] for the next page
pause >nul
cls
echo Version 1.2.0
echo Now you can change User Properties. The Update Option was moved to settings.
echo Version 1.2.1
echo Bug-Fixes. Now you should confirm yourself when logging in Safe Mode
echo Version 1.3.0
echo Better folder recognition in 3PStore and TextPad. Text fix in Settings.
echo Version 1.4.0
echo Bug Fixes. Now apps detect if the file(s) exist.
echo Version 1.4.1
echo Bug Fixes.
echo Version 1.5.0
echo The App_Sample is no longer in the archive. MyOS will automatically generate some of the folders.
echo Version 1.6.0
echo Now the Guest Settings change a lot faster and easier! You can turn off the password!
echo Version 1.7.0
echo Merry Christmas! Now you can change the hint! The password changing to 0 bug was fixed!
echo Version 1.8.0
echo Bug Fixes. Now Text Pad is available in Safe Mode.
echo Version 1.9.0
echo The first release in 2020! The kernel was updated to version 1.2.0.
echo Version 2.0.0
echo + BioProtect! Block with a password the system apps of MyOS
echo + MP3 Player! Play your favourite songs in MyOS
echo + PassProtect! Save your Passwords in files, accecible only in MyOS.
echo + Turn Off Safe Mode! If you don't need it, then you can still turn it off!
echo Press [ENTER] for the next page
pause >nul
cls
echo Version 2.0.1
echo Settings Configurations! Set your settings everytime you boot.
echo Version 2.0.2
echo You can type up to 12 lines in Text Pad.
echo Version 2.1.0
echo + You can type up to 60 lines in Text Pad.
echo + The New Text Pad is avaiable in Safe Mode.
echo Version 2.2.0
echo + Fixed PassProtect Open Function
echo + PassProtect needs confirmation to delete passwords.
echo + Added hints for COVID-19
pause >nul
goto sdeskt
:s3rdMart
cls
if exist "MyOS.bat" (
	if not exist "MyOS Applications" (
		mkdir "MyOS Applications"
	)
	cd "MyOS Applications"
) else (
	cd..
	if exist "MyOS.bat" (
		if not exist "MyOS Applications" (
			mkdir "MyOS Applications"
		)
		cd "MyOS Applications"
	)
)
title MyOS - 3rd Party App Launcher
echo 3rd Party App Launcher Version 1.0.0
echo Please choose an application to run. (Without file extension) (Type [1] to exit)
dir /b
set /p App=App Name:
if %App% == 1 goto sdeskt
if not exist %App%.bat (
	if not exist %App%.cmd (
		echo This application does not exist. Please choose another one.
		timeout /T 1 /NOBREAK >nul
		goto s3rdMart
	)
)
if exist %App%.cmd (
	start %App%.cmd
)
if exist %App%.bat (
	start %App%.bat
)
goto sdeskt
:stextp
cls
if exist "MyOS.bat" (
	if not exist "MyOS Text Files" (
		mkdir "MyOS Text Files"
	)
	cd "MyOS Text Files"
) else (
	cd..
	if exist "MyOS.bat" (
		if not exist "MyOS Text Files" (
			mkdir "MyOS Text Files"
		)
		cd "MyOS Text Files"
	)
)
title MyOS - Text Pad
echo Text Editor version 1.1.0
echo 1 = Create a new text file.
echo 2 = View existing text files.
echo 3 = Delete an existing file.
echo 4 = Exit
set /p Choice=Command 
if %Choice% == 1 goto screatetext
if %Choice% == 2 goto sviewtext
if %Choice% == 3 goto sdeltext
if %Choice% == 4 goto sdeskt
echo Invalid command. Please choose between existing commands.
timeout /T 1 /NOBREAK >nul
goto TEXTMENU
:screatetext
cls
echo Please type the name of the text file you want to make. (It can't contain spaces) (Type [1] to exit)
set /p N=Name: 
if %N% == 1 goto stextp
goto sLinesText
:sLinesText
cls
echo How many lines do you want the file to have? (1-100)
set /p Lines=Lines: 
if %Lines% GTR 0 (
	if %Lines% LSS 61 (
		set /a CurrentLine=1
		goto sWriteText
	)
)
echo This number is invalid
timeout /T 1 /NOBREAK >nul
goto sLinesText
:sWriteText
cls
setlocal EnableDelayedExpansion
if not ERRORLEVEL 0 goto errorcode
echo Write the text of the file. (Use [ENTER] to proceed into another line)
set /p W%CurrentLine%=
if %CurrentLine% == 0 (
	echo !W%CurrentLine%! > %N%.txt
) else (
	echo !W%CurrentLine%! >> %N%.txt
)
if not %CurrentLine% == %Lines% (
	set /a CurrentLine=%CurrentLine%+1
	goto sWriteText
) else (
	goto stextp
)
:sviewtext
cls
echo Type the name of the file you wish to open (without file extension) (Type [1] to exit)
dir /b
set /p open=File Name 
if %open% == 1 goto stextp
if exist %open%.txt (
	notepad %open%
	pause >nul
	goto stextp
) else (
	echo The file does not exist.
	timeout /T 1 /NOBREAK >nul
	goto sviewtext
)
:sdeltext
cls
echo Type the name of the file you wish to delete (without file extension) (Type [1] to exit)
dir /b
set /p delete=File Name 
if %delete% == 1 goto TEXTMENU
if exist %delete%.txt (
	del %delete%.txt /s /q >nul
	echo Deleting %delete.txt%
	timeout /T 1 /NOBREAK >nul
	goto stextp
) else (
	echo The file does not exist.
	timeout /T 1 /NOBREAK >nul
	goto sdeltext
)
:sset
cls
title MyOS - Settings
echo Settings - Version 2.0.0
echo 1 = System Colour
echo 2 = Exit
set /p Choice=Command 
if %Choice% == 1 goto sccolor
if %Choice% == 2 goto sdeskt
echo Invalid Command. 
timeout /T 1 /NOBREAK >nul
goto sset
:sccolor
cls
echo Choose the new color for your system
echo Here's the full list of the Operating System colour:
echo 0 - Black        8 - Gray
echo 1 - Dark-Blue    9 - Light-Blue
echo 2 - Green        A - Light-Green
echo 3 - Blue         B - Very Light Blue
echo 4 - Red          C - Light-Red
echo 5 - Purple       D - Light-Purple
echo 6 - Yellow       E - Light-Yellow
echo 7 - Light-Gray   F - White
echo Type like this: 38 (Blue Background And Gray Text)
set /p Color=Your Colour: 
color %Color%
timeout /T 0 /NOBREAK >nul
goto sset
:fix
cls
echo This Recovery Option needs internet connection and access to web browser. Do you want to continue?
echo Y/N
set /P Choice=
if %Choice% == Y goto fixstart
if %Choice% == N goto sdeskt
echo Invalid Choice. Exiting Operation
timeout /T 1 /NOBREAK >nul
goto sdeskt
:fixstart
cd C:\Users\danie\Desktop
cls
echo Starting the Fix. You CANNOT use the system. Do NOT close your Browser or Command Prompt while the system is doing the recovery. This recovery option will update the installer and product key as well.
timeout /T 2 /NOBREAK >nul
echo Downloading the latest version of MyOS...
start https://github.com/Duckloveshack/MyOSSafe/releases/download/latest/MyOSRecovery.bat
start https://github.com/Duckloveshack/MyOSSafe/releases/download/latest/MyOSRecoverySetup.bat
start https://github.com/Duckloveshack/MyOSSafe/releases/download/latest/MyOSRecoveryProductKey.txt
echo Now Trust the download(s). The Windows Defender may mistakely understand the MyOS as a virus. Press [Enter] to continue.
pause >nul
RecoveryMyOS.bat
exit
:Update
cls
echo The Update needs the sub-system reboot. This process requires internet connection and access to Web. Do you want to proceed?
echo Yes=Y  No=N
set /P Choice=
if %Choice% == Y goto UpdStartReb
if %Choice% == N goto desktop
echo Incorrect symbol. Please try again
timeout /T 1 /NOBREAK >nul
goto update
:UpdStartReb
title Updating MyOS...
cls
echo MyKERNEL version 1.2.0
timeout /T 1 /NOBREAK >nul
echo MyOS is found at /system
timeout /T 1 /NOBREAK >nul
echo MyOS/%U%:
timeout /T 0 /NOBREAK >nul
cls
echo MyKERNEL version 1.2.0
echo MyOS is found at /system
echo MyOS/%U%: upd
timeout /T 2 /NOBREAK >nul
cls
goto UpdStart
:UpdStart
cd C:\Users\danie\Desktop
cls
echo Starting Update
echo DO NOT CLOSE THE COMMAND PROMPT, THE BROWSER OR SHUT DOWN WINDOWS!
start https://github.com/Duckloveshack/MyOSSafe/releases/download/latest/MyOSRecovery.bat
echo Now Trust the download. The Windows Defender may mistakely understand the MyOS as a virus. Press [Enter] to continue.
pause >nul
cls
echo Do you want to update the Setup?
echo Yes=Y  No=N
set /P Choice=
if %Choice% == Y goto UpdStartSetup
if %Choice% == N goto UpdStartQ
echo Invalid key. Aborting Process
goto BOOT
:UpdStartSetup
cls
echo Starting Update
echo DO NOT CLOSE THE COMMAND PROMPT, THE BROWSER OR SHUT DOWN WINDOWS!
start https://github.com/Duckloveshack/MyOSSafe/releases/download/latest/MyOSRecoverySetup.bat
echo Now Trust the download. The Windows Defender may mistakely understand the MyOS Setup as a virus. Press [Enter] to continue.
pause >nul
:UpdStartQ
cls
echo Do you want to update the Product Key?
echo Yes=Y  No=N
set /P Choice=
if %Choice% == Y goto UpdStartKey
if %Choice% == N goto UpdFinish
echo Invalid key. Aborting Process
goto BOOT
:UpdStartKey
cls
echo Starting Update
echo DO NOT CLOSE THE COMMAND PROMPT, THE BROWSER OR SHUT DOWN WINDOWS!
start https://github.com/Duckloveshack/MyOSSafe/releases/download/latest/MyOSRecoveryProductKey.bat
echo Now Trust the download. The Windows Defender may mistakely understand the MyOS Product Key as a virus. Press [Enter] to continue.
pause >nul
:UpdFinish
cls
echo Starting the Recovery Process...
echo This will shut down MyOS.
timeout /T 2 /NOBREAK >nul
RecoveryMyOS.bat
exit
