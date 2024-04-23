*** Settings ***

Library    SeleniumLibrary    #pour ouvrir le navigateur
Documentation    SeleniumLibrary screeshot Exemple

*** Variables ***
${Browser}    chrome

*** Test Cases ***
Faire une capture avec seleniumLib
    Open python.org
    capture element screenshot    //header/div[1]/nav[1]/ul[1]/li[2]/a[1]    imgscree.png     # il fait capture juste au boton donload
    capture page screenshot    ecran.png     # capture tte l'ecran
*** Keywords ***
Open python.org
    open browser    https://www.python.org/    ${Browser}
    maximize browser window
    sleep     2




#on utiliser ce document https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html bech jebna les library