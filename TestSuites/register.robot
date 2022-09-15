***Settings***
Resource                    ../pageObjects/Base.robot
Resource                    ../pageObjects/loginpages.robot
Resource                    ../pageObjects/registerpages.robot
Suite Setup                 Open Login Register Application
Suite Teardown              Close Application

***Test Cases***
User should able login with valid data
        [Documentation]                     Test to verify user should be able register with valid data

        Verify Login Register appears
        Tap link create one 
        Verify register page
        Fill Name                      name=Natant
        Fill Email                     email=natant@gmail.com
        Fill Password                  password=Test12345
        Fill Confirm Password          confirmpass=Test12345
        Tap Register Button
        Verify User successfully register
        sleep       5s