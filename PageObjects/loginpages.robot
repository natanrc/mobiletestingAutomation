*** Settings ***
Documentation               Search keywords
Variables                   ../Resource/log_locators.yaml

***Keywords***
Verify Login Register appears
    Wait Until Element Is visible           ${title}
    Element Should Be Visible               ${title}

Input Email
    [Arguments]         ${email}
    Input Text          ${txt_email}             ${email}   

Input Password   
    [Arguments]         ${pass}
    Input Text          ${txt_password}            ${pass}

Tap Login Button   
    Click Element               ${btn_login}

Verify User in homepage
    Wait Until Element Is visible           ${text_hello}
    Element Should Be Visible               ${text_account}

Tap link create one
    Click Element               ${txt_link_register}

Clear email and password text
    Clear Text                  ${txt_email}
    Clear Text                  ${txt_password}

User should be failed to login
    Wait Until Element Is visible               ${error_login}

User should have get message invalid Email
    Wait Until Element Is visible               ${error_email}

     
