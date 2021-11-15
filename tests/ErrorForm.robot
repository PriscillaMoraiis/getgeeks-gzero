*Settings* 

Documentation   Desafio 2 Pro 

Resource         ${EXECDIR}/resources/Base.robot

Suite Setup       Suite Session 
Suite Teardown    Finish Session



*Test Cases* 


Desafio: Required Whatsapp      

    [Template]      Required Whatsapp                 
    11      
    1122222222  

Desafio: Required Fields
    [Template]      Required Fields
    ${EMPTY}

Desafio: Required Hour
    [Template]      Required Hour
    abc123
    a23
    12*





*Keywords*

Required Fields
    [Arguments]     ${null}    

    Required Whatsapp     ${null}
    Required Description  ${null} 
    Required Hour         ${null} 

Required Whatsapp  
    [Tags]          1

   [Arguments]     ${whats_null}    


    ${user}     Create Dictionary
    ...         name=Lana                last=Del Rey
    ...         email=lana@rey.com       password=pwd123
    ...         whats=${whats_null}      desc=Instalo Distros Ubunto, Debian, ElementaryOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubuntoo,Mint
    ...         printer_repair=Não       work=Remoto     cost=999   

    Fill Geek From       ${user}
    Submit Geek form
    Alert Span Should Be   O Whatsapp deve ter 11 digitos contando com o DDD
 

Required Description

    [Tags]      2

    [Arguments]     ${desc_null} 

    ${user}     Create Dictionary
    ...         name=Lana                last=Del Rey
    ...         email=lana@rey.com       password=pwd123
    ...         whats=11999999999        desc=${desc_null} 
    ...         printer_repair=Não       work=Remoto     cost=999   

    Fill Geek From       ${user}
    Submit Geek form
    Alert Span Should Be   Informe a descrição do seu trabalho

Required Hour

    [Tags]      3

    [Arguments]     ${hour_null} 

    ${user}     Create Dictionary
    ...         name=Lana                last=Del Rey
    ...         email=lana@rey.com       password=pwd123
    ...         whats=11999999999        desc=Instalo Distros Ubunto, Debian, ElementaryOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubuntoo,Mint
    ...         printer_repair=Não       work=Remoto     cost=${hour_null}    

    Fill Geek From       ${user}
    Submit Geek form
    Alert Span Should Be    Valor hora deve ser numérico


