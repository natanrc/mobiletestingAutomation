*** Settings ***
Documentation               Search keywords
Variables                   ../resource/reg_locators.yaml

***Keywords***
 
Verify register page
    Wait Until Element Is visible           ${textname}
    Element Should Be Visible               ${textname}

Fill Name
    [Arguments]         ${name}
    Input Text          ${txt_name}             ${name}

Fill Email
    [Arguments]         ${email}
    Input Text          ${txt_email}             ${email}

Fill Password
    [Arguments]         ${password}
    Input Text          ${txt_passwrord}             ${password}

Fill Confirm Password
    [Arguments]         ${confirmpass}
    Input Text          ${txt_confirm_passw}             ${confirmpass}

Tap Register Button
    Click Element               ${btn_register}

Verify User successfully register
    Wait Until Element Is visible           ${register_success}
    Element Should Be Visible               ${register_success}