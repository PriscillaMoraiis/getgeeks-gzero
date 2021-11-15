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


Alert Span Should Be
    [Arguments]     ${expected_alert}

    Wait For Elements State     css=span[class=error] >> text=${expected_alert}
    ...                         visible     5

Alert Spans Should Be 

    [Arguments]     ${expected_alerts}

    @{got_alerts}   Create List    

    ${spans}        Get Elements        xpath=//span[@class="error"]

    FOR     ${span}     IN      @{spans}

        ${text}             Get Text           ${span}
        Append to List      ${got_alerts}      ${text}

    END

    Lists Should Be Equal    ${expected_alerts}      ${got_alerts}