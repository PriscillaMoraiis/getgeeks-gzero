*Settings*

Documentation   Test Helpers

*Keywords*

Add User From Database

    [Arguments]     ${user}

    Connect to Postgres
    Insert User     ${user}
    Disconnect From Database

Do Login
    [Arguments]     ${user}

    Go to login Page 
    Fill Credentials  ${user}
    Submit Credentials
    User Should Be Logged In  ${user}


    