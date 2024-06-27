@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  TransformationExplorer startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and TRANSFORMATION_EXPLORER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\TransformationExplorer.jar;%APP_HOME%\lib\forsyde-io-java-graphviz-0.7.13.jar;%APP_HOME%\lib\graphviz-java-0.18.1.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.30.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.30.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\forsyde-io-java-libforsyde-0.7.13.jar;%APP_HOME%\lib\forsyde-io-java-libforsyde-hierarchy-0.7.13.jar;%APP_HOME%\lib\forsyde-io-java-core-0.7.13.jar;%APP_HOME%\lib\jaxb-runtime-4.0.0.jar;%APP_HOME%\lib\jaxb-core-4.0.0.jar;%APP_HOME%\lib\jakarta.xml.bind-api-4.0.0.jar;%APP_HOME%\lib\antlr4-4.10.1.jar;%APP_HOME%\lib\antlr4-runtime-4.10.1.jar;%APP_HOME%\lib\jgrapht-core-1.5.2.jar;%APP_HOME%\lib\picocog-1.0.7.jar;%APP_HOME%\lib\jheaps-0.14.jar;%APP_HOME%\lib\apfloat-1.10.1.jar;%APP_HOME%\lib\ST4-4.3.3.jar;%APP_HOME%\lib\antlr-runtime-3.5.3.jar;%APP_HOME%\lib\org.abego.treelayout.core-1.0.3.jar;%APP_HOME%\lib\javax.json-1.0.4.jar;%APP_HOME%\lib\icu4j-69.1.jar;%APP_HOME%\lib\viz.js-graphviz-java-2.1.3.jar;%APP_HOME%\lib\svgSalamander-1.1.3.jar;%APP_HOME%\lib\nashorn-promise-0.1.1.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\angus-activation-1.0.0.jar;%APP_HOME%\lib\jakarta.activation-api-2.1.0.jar;%APP_HOME%\lib\txw2-4.0.0.jar;%APP_HOME%\lib\istack-commons-runtime-4.1.1.jar


@rem Execute TransformationExplorer
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %TRANSFORMATION_EXPLORER_OPTS%  -classpath "%CLASSPATH%" patternMatch.PatternMatcher %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable TRANSFORMATION_EXPLORER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%TRANSFORMATION_EXPLORER_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
