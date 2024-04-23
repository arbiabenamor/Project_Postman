*** Settings ***
# on importe notre library
Library    SeleniumLibrary
# on va voir les differents keywords qui existe dans library de selinium
Documentation     Test Basic sur SeleniumLibrary
*** Variables ***
${Browser1}    chrome
${Browser2}    firefox

${URL_Google}   https://www.google.fr/

*** Test Cases ***
Recherche Google     #le nom de test case

    Open NavigateurChrome    #appel au keyword
 #click element    //*[@id="ldkuGe"]/div    : si on a un pop up
    #on cheque l'exsitstence de bouton recherche :
    wait until page contains    Applications Google    timeout=20     #attendre 20seconde jusq'a il voit aaplications google
    reload page    #juste montere que c'est un nouveu keyword qui fait l'actualisation de la page
     wait until page contains    Applications Google    timeout=20     #reverifier

    Input Text    xpath://textarea[@class='gLFyf']    robot
    Press Keys    xpath://textarea[@class='gLFyf']     \\13
    close browser
#2éme methode
    #Input Text    css:.gLFyf    robot
    # Press Keys    css:.gLFyf    \\13   #remplace le clavier entrée
     [Teardown]    Close Browser    # Cette instruction permet de ne pas fermer le navigateur à la fin du test
#3éme methode
    # press keys    None    robotframwork : il va ecrire le text dans le fenetre active directement
   # press keys    tag:input    ENTER

# ==> Les commandes press keys sont principalement utilisées pour simuler la saisie de touches sur un clavier réel. Cependant,
#dans le cas d'un élément <textarea>, il est plus approprié d'utiliser la commande Input Text pour saisir du texte dans
#cet élément spécifique. Quant à la touche "Entrée", vous pouvez simuler son appui à l'aide de la commande Press Keys
#avec la touche spéciale \\13.


   # page should contain element    /html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
  #  input text         //*[@id="APjFqb"]    robotframework
#create webdriver    chrome   execute_path= C:\Users\PC\Downloads\chrome-win64
#mais on prefere pas utiliser le path , on met le fichier .exe dans script de l'installation de python
# open browser sur ce navigateur chrome  et l'url de google ,on met aussi le path de notre driver
  #  open browser    https://www.google.fr/    chrome
  #  maximize browser window
*** Keywords ***
# je peux créer ce keyword "Open NavigateurChrome" qui permet d'ouvrir le navigateur sur ce browser
Open NavigateurChrome
    open browser    ${URL_Google}    ${Browser1}
    maximize browser window

 # j'ai rencontrer 2 probleme avec robt : le navigateur se ferme directement et le press keys ne marche pas avec ENTER

# en robot framework il ya 3 librairies pour faire screenshot