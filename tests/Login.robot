*Settings*

Documentation    Login Test Suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*Test Cases*

User Login 

    ${user}                     Factory User Login
    Add User From Database      ${user} #Problema na inclusão do User Seed aula 4
    
    Go to login Page 
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect pass

    [Tags]      i_pass

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

    [Tags]      i_email

    ${user}      Create Dictionary      email=priscilla$404.com       password=abc123
    
    Go to login Page 
    Fill Credentials           ${user}
    Submit Credentials
    Shold Be Type Email      

