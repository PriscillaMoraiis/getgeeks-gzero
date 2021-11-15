*Settings*
Documentation       Be Geek test suite

Resource    ${EXECDIR}/resources/Base.robot

Test Setup      Start Session
Test Teardown   Finish Session

*Test Cases* 

Be a Geek


    ${user}     Factory User    be_geek

    Do Login  ${user}
    Go To Geek From
    Fill Geek From   ${user}[geek_profile]
    Submit Geek form
    Geek Form Should Be Success


Short Description

    ${user}     Factory User    short_desc
    Do Login     ${user} 

    Go To Geek From
    Fill Geek From       ${user}[geek_profile]
    Submit Geek form
    Alert Span Should Be  A descrição deve ter no minimo 80 caracteres

Long Description

    [Tags]      long_desc

    ${user}     Factory User    long_desc
    Do Login     ${user} 

    Go To Geek From
    Fill Geek From       ${user}[geek_profile]
    Submit Geek form
    Alert Span Should Be  A descrição deve ter no máximo 255 caracteres

