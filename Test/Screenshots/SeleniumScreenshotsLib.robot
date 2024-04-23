*** Settings ***
Library   SeleniumScreenshots
Library    SeleniumLibrary    #pour ouvrir le navigateur
Documentation    SSeleniumScreenshots Exemple

*** Variables ***
${Browser}    chrome

*** Test Cases ***
Faire une capture seleniumScreenshots     # le nom de test case
    Open python.org     # on utiliser ce keyword pour on peut ouvrir le site python
    sleep    3     # aprés l'ouverture on sleep 3 secondes au cas ou se charge apres un temps : wait
    Highlight     # ce keywoerd permet d'ajouter le craux en points jebneh ml url elli 7attitou louta , supporteplusieurs locators = path
    ...     link:downloads    # je precise qu'est ce que je dois hilighter : c'est a partir de link de bouton download dans page python en utilisant chropath
    capture and crop page screenshot    # on fait capture et couper de page python
    ...     image.png    # le nom de capture
    ...     css:#touchnav-wrapper > header    # spécifie la région de la page à capturer en utilisant chropâth
    ...     css:#downloads     # aussi spécifie la région de la page à capturer en utilisant chropâth
*** Keywords ***
Open python.org
    open browser    https://www.python.org/    ${Browser}
    maximize browser window



#on utiliser ce document https://marketsquare.github.io/robotframework-seleniumscreenshots/    bech jebna les library



#Mon Test
 #   Keyword
 #   ...  arg1
 #   ...  arg2
 #  ...  arg3

 #Keyword est le nom du mot-clé que nous appelons dans notre test.
#Les trois points (...) indiquent que les arguments suivants sont une continuation de la ligne précédente.
#arg1, arg2 et arg3 sont les arguments passés au mot-clé Keyword.