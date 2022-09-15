*** Settings ***
Documentation               Base keyword related
Library                     AppiumLibrary

*** Variables ***
${REMOTE_URL}                    http://localhost:4723/wd/hub


*** Keywords ***
Open Login Register Application
        Open Application                    ${REMOTE_URL}
        ...                                 automationName=UiAutomator2
        ...                                 platformName=Android
        ...                                 platformVersion=8.1
        ...                                 deviceName=emulator-5554
        ...                                 appPackage=com.loginmodule.learning
        ...                                 appActivity=com.loginmodule.learning.activities.LoginActivity