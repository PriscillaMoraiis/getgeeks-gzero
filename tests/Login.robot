*Settings*

Documentation    Login Test Suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*Test Cases*

User Login 
    [Tags]      user_log
# Tive um problema na aula 4 User Seed, não funcionou de nenhuma forma. Então para entregar o desafio optei por deixar o ADD User From database. :( 
    ${user}                     Factory User    login
    Add User From Database      ${user} 
    
    Go to login Page 
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect pass

    [Tags]      inv_pass

    ${user}      Create Dictionary      email=priscilla@morais.com       password=abc123
    
    Go to login Page 
    Fill Credentials           ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos. 

User not found 

    [Tags]      user_404

    ${user}      Create Dictionary      email=priscilla@404.com       password=abc123
    
    Go to login Page 
    Fill Credentials           ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos. 

Incorrect Email

    [Tags]      inv_email

    ${user}      Create Dictionary      email=priscilla$404.com       password=abc123
    
    Go to login Page 
    Fill Credentials            ${user}
    Submit Credentials
    Shold Be Type Email      

Required Email

    [Tags]      req_email

    ${user}     Create Dictionary       email=${EMPTY}       password=abc123 

    Go to login Page 
    Fill Password               ${user}
    Submit Credentials
    Alert Span Should Be  E-mail obrigatório

Required Password

    [Tags]      req_pass

    ${user}     Create Dictionary   email=priscilla@gravzero.com    password=${EMPTY}

    Go to login Page 
    Fill Credentials                  ${user}
    Submit Credentials
    Alert Span Should Be    Senha obrigatória

Required Email and Password

    [Tags]      req_all

    @{expected_alerts}      Create List
    ...                     E-mail obrigatório
    ...                     Senha obrigatória
    Go to login Page 
    Submit Credentials
    Alert Spans Should Be   ${expected_alerts}

