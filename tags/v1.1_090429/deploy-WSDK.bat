:: Copyright (C) 2007-2009, Sumisho Computer Systems Corp. All Rights Reserved.
::
:: An OpenCurl project.

:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
:: 
::     http://www.apache.org/licenses/LICENSE-2.0
:: 
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.

:: ------------------------------
:: NOTE: move this above svn workspaces
:: - avoids bad interaction between TortoiseSVN and deploy-project
:: ------------------------------

REM @echo off

:: define release tag
:: ------------------------------
set TAG=090429

:: define command shortcuts
:: ------------------------------
set CURL-EXE="c:\Program Files\Curl Corporation\Surge\8\bin\curl.exe"
set CURL-EXE6="c:\Program Files\Curl Corporation\Surge\7\bin\curl.exe"
set JUMP-IF-ERROR=IF ERRORLEVEL 1 (GOTO :ERROR)

:: fresh copy of source tree
:: ------------------------------
echo == fresh copy for each version
rd /s /q __WORK
md __WORK
svn export WSDK\branches\v1.1 __WORK\WSDK
move __WORK\WSDK __WORK\WSDK-V6
svn export WSDK\branches\v1.1 __WORK\WSDK
move __WORK\WSDK __WORK\WSDK-V7
cd __WORK
%JUMP-IF-ERROR% ELSE echo == done.

:: batch deploy WSDK-V7
:: ------------------------------
echo == deploy WSDK-V7
%CURL-EXE% WSDK-V7\build\deploy-batch.xcurl
%JUMP-IF-ERROR% ELSE echo == done.

:: batch deploy WSDK-V6
:: ------------------------------
echo == deploy WSDK-V6
%CURL-EXE6% WSDK-V6\build\become-v6.xcurl
%CURL-EXE6% WSDK-V6\build\deploy-batch.xcurl
%JUMP-IF-ERROR% ELSE echo == done.

:: distribution directories
:: ------------------------------
move WSDK-V6\build\DEPLOYED WSDK-V6_%TAG%
move WSDK-V7\build\DEPLOYED WSDK-V7_%TAG%

:: done
:: ------------------------------
echo deployed.
pause
goto :EOF

:ERROR
echo deploy failed.
pause

:EOF
