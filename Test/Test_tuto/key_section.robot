*** Settings ***
Documentation    Test case pour expliquer les sections
...               sous RobotFramework
# Library         SeleniumLibrary

*** Variables ***
${MSG}=     Hello tout le monde
#declaration de variable MSG


*** Keywords ***
hello world
    log   ${MSG}
 #j'ai cree un motcle qui s'appele (hello world) qui contient un autre keyword prédefinit qui permet d'afficher ${MSG} :Hello tout le monde

*** Test Cases ***
Afficher un text1
    [tags]    1
    hello world
#ce testcase va faire appeler a ce keyword qui s'appelle hello world et le nom de test case :Afficher un text1

Afficher un text2
     [tags]   2     #  utilisé comme une annotation
    hello world

Afficher un text3
     [tags]   3     #  utilisé comme une annotation
    hello world;

# on lance avec robot key_section.robot
#apres l'excution il genere 3 fichier log.html/output.xml/report.html
# et si je veux que soit dans dossier results :  robot -d ..\..\Resultats\ key_section.robot
#key_section.robot = Test_tuto : test suite et contient 2 tests cases
#robot -d ..\..\Resultats\ -i 1 key_section.robot : pour présiser le tag de test qu'il va le exécuter
# robot -d ..\..\Resultats\ -e 1 key_section.robot : exclu le 1
# exécuter selon nom de cas de test  : robot -d ..\..\Resultats\ -t "Afficher un text2" key_section.robot
#robot -d ..\..\Resultats\ -r ..\..\Resultats\output.xml .\key_section.robot : -r : rrunfaild , exécute le test qui est failed et il affiche le msg d'eereur
#robot -d ..\Resultats\ -s .\Test_tuto\key_section.robot : -s =suite
#robot -d ..\Resultats\ -s Test . : cad excute tous les testcases de nom "Test" dans tt les suites
# output.xml : le resultat sous forme de xml