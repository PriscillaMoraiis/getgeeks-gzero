*Settings*

Documentation       Arquivo base do projeto de testes

Library     Browser
Library     Collections

Library     factories/Users.py

Resource    actions/_SharedActions.robot
Resource    actions/AuthActions.robot
Resource    actions/SignupActions.robot
Resource    actions/GeekActions.robot

Resource    Database.robot
Resource    Helpers.robot


*Variables*
${BASE_URL}     https://getgeeks-pm.herokuapp.com  

*Keywords*

Start Session

    New Browser       chromium         headless=False        slowMo=00:00:00.5
    New Page          ${BASE_URL}

Finish Session

    Take Screenshot     fullPage=True

Suite Session

    New Browser       chromium         headless=False        slowMo=00:00:00.1
    New Page          ${BASE_URL}

    ${user}     Create Dictionary
    ...         name=Lana                last=Del Rey
    ...         email=lana@rey.com       password=pwd123
    ...         whats=11999999999     desc=Instalo Distros Ubunto, Debian, ElementaryOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubuntoo,Mint
    ...         printer_repair=Não       work=Remoto     cost=999   

    Do Login        ${user}
    Go To Geek From 