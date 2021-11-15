*Settings*

Documentation           Signup test Suite

Resource             ${EXECDIR}/resources/Base.robot

Test Setup           Start Session
Test Teardown        Finish Session

*Test Cases*

Register a new user
    
   ${user}      Factory User  faker

   Go to Signup Form
   Fill Signup Form   ${user}
   Submit Signup Form
   User Should Be Registered

Duplicate user

   [Tags]      attempt_signup

   ${user}                 Factory User   faker
   Add User From Database  ${user}

   Go to Signup Form
   Fill Signup Form  ${user}
   Submit Signup Form
   Modal Content Should Be   Já temos um usuário com o e-mail informado.

Wrong Email

   [Tags]      attempt_signup

   ${user}     Factory User   wrong_email

   Go to Signup Form
   Fill Signup Form  ${user}
   Submit Signup Form
   Alert Span Should Be  O email está estranho


Required Fields
   [Tags]      attempt_signup    reqf

   @{expected_alerts}      Create List
   ...                     Cadê o seu nome?
   ...                     E o sobrenome?
   ...                     O email é importante também!
   ...                     Agora só falta a senha!

   Go to Signup Form
   Submit Signup Form
   Alert Spans Should Be      ${expected_alerts}
   

Short Password
   [Tags]      attempt_signup    short_pass
   [Template]  Signup With Short Pass    
   1
   12
   123
   1234
   12345
   a
   A2
   ab3
   ab4c
   a23#4
   -1
   ab65


*Keywords*

Signup With Short Pass
   [Arguments]       ${short_pass}


   ${user}  Create Dictionary
   ...      name=Priscilla    last=Morais
   ...      email=priscilla@gmail.com  password=12345

   Go to Signup Form
   Fill Signup Form  ${user}
   Submit Signup Form
   Alert Span Should Be  Informe uma senha com pelo menos 6 caracteres

