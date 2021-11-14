*Settings*

Documentation   Shared Actions

*Keywords*

Modal Content Should Be 
    [Arguments]     ${expected_text}

    ${title}       Set Variable     css=.swal2-title
    ${Content}     Set Variable     css=.swal2-html-container

    Wait For Elements State      ${title}            visible     5
    Get Text                     ${title}            equal       Oops...

    Wait For Elements State      ${Content}          visible     5
    Get Text                     ${Content}          equal       ${expected_text}     