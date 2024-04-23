*** Settings ***
Library    Screenshot    # comme ecris dans library il faut

Documentation    Screenshot standard Library

*** Variables ***

*** Test Cases ***
Prendre une capture d'ecran
    set screenshot directory     Resultats/screenshot    #stoké sous dossier resultat/screenshot
    take screenshot        image       width=100%     # je vaus faire capture et spacifier la largeur en nommant image
    take screenshot without embedding   #si on veut pas specifier largeur et with
#name=screenshot
#width=800px

*** Keywords ***


#on utiliser ce document https://robotframework.org/robotframework/latest/libraries/Screenshot.html     bech jebna les library