*Settings*

Documentation           Signup required test Suite

Resource             ${EXECDIR}/resources/Base.robot

Suite Setup           Signup Without Fill Form
Suite Teardown        Finish Session

*Test Cases*

Name is required
    Alert Span Should Be         Cadê o  nome?

Lastname is required
    Alert Span Should Be         E o sobrenome?

Email is required
    Alert Span Should Be        O email é importante também!

Password is required
    Alert Span Should Be        Agora só falta a senha!


*Keywords*

Signup Without Fill Form
    
    Start Session
    Go to Signup Form
    Submit Signup Form