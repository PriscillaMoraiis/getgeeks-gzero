*Settings*

Documentation   Test Helpers

*Keywords*

Add User From Database

    [Arguments]     ${user}

    Connect to Postgres
    Insert User  ${user}
    Disconnect From Database
    