*** Settings ***
Documentation    Enregistrement video
Library    AutoRecorder    name=tesssssstrecording
#Library    AutoRecorder    name=test    # un video par test for recording
Library    SeleniumLibrary
*** Variables ***


*** Test Cases ***
Test VideoRecorder
       open browser    https://www.python.org/    chrome
       maximize browser window
    sleep     7s

*** Keywords ***
