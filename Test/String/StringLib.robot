*** Settings ***
Library    String
Documentation    String library standard

*** Variables ***


*** Test Cases ***
convertir en minuscule
     ${str1}=     Convert To Lower Case     ABC
      ${str2}=     Convert To Lower Case    1A2c3D
      should be lower case        ${str1}
      should be lower case         ${str2}
      should be equal     ${str1}     abc
       should be equal     ${str2}     1a2c3d


convertir en Majuscule

      ${str1}=     convert to upper case     abc    # convertir en majuscule
      ${str2}=     convert to upper case     1a2c3d
      should be upper case           ${str1}
      should be upper case            ${str2}
      should be equal     ${str1}     ABC
       should be equal     ${str2}    1A2C3D



generation d'une chaine random

  ${low}=    generate random string     12  [LOWER]    # de 12 caractere,dans un tableau

  log    ${low}   #permet de loger afficher le variable low
supprimer une chaine
       ${str}=    remove string    Robot Framework    work
       log        ${str}

Remplacer une chaine
       ${str}=    replace string    Hello, world!    world     tellus
        log        ${str}

*** Keywords ***
# la library string est integré par defaut lors de l'installation de robot framework
# on a utiliser cette url : https://robotframework.org/robotframework/latest/libraries/String.html