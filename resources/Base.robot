*Settings*

Documentation       Arquivo base do projeto de testes

Library     Browser
Library     Collections

Library     factories/Users.py

Resource    actions/_SharedActions.robot
Resource    actions/AuthActions.robot
Resource    actions/SignupActions.robot

Resource    Database.robot
Resource    Helpers.robot


*Variables*
${BASE_URL}     https://getgeeks-pm.herokuapp.com     

*Keywords*

Start Session

    New Browser       chromium         headless=False        slowMo=00:00:00.5
    New Page          ${BASE_URL}

Finish Session

    Take Screenshot    