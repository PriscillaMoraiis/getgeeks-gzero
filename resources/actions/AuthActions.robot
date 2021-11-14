*Settings* 

Documentation       Authentication Login 


*Variables*

${INPUT_EMAIL}      Id=email
${INPUT_PASS}       id=password


*Keywords*

Go to login Page 

    Go to       ${BASE_URL}

    Wait For Elements State     css=.login-form     visible    5   

Fill Credentials 

    [Arguments]     ${user}

    Fill Text       ${INPUT_EMAIL}         ${user}[email]
    Fill Text       ${INPUT_PASS}          ${user}[password]

Submit Credentials

    Click       css=.submit-button >> text=Entrar

User Should Be Logged In

    [Arguments]      ${user}

    ${element}              Set Variable       css=a[href="/profile"]
    ${expected_fullname}    Set Variable       ${user}[name] ${user}[last]

    Wait For Elements State        ${element}       visible     5
    Get Text                       ${element}       equal       ${expected_fullname}

Shold Be Type Email
    Get Property           ${INPUT_EMAIL}        type        equal       email