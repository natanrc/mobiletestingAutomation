***Settings***
Resource                    ../pageObjects/Base.robot
Resource                    ../pageObjects/loginpages.robot
Suite Setup                 Open Login Register Application
Suite Teardown              Close Application

***Test Cases***
Login with valid email and invalid password
        [Documentation]                     Test to verify login functionality
        ...                                 error login test
        ...                                 valid email and invalid password
        [Tags]                              invalid_password

        Clear email and password text
        Input Email                         email=natant@gmail.com
        Input Password                      pass=test125    
        Tap Login Button   
        User should be failed to login
        sleep       5s

Login with invalid email and valid password
        [Documentation]                     Test to verify login functionality
        ...                                 error login test
        ...                                 invalid email and valid password
        [Tags]                              invalid_email

        Clear email and password text
        Input Email                         email=natantondok
        Input Password                      pass=Test12345   
        Tap Login Button   
        User should have get message invalid Email
        sleep       5s


Login with invalid email and invalid password
        [Documentation]                     Test to verify login functionality
        ...                                 error login test
        ...                                 invalid email and invalid password
        [Tags]                              invalid_email&password

        Tap Login Button
        Clear email and password text
        sleep       5s
        Input Email                         email=natantondok
        Input Password                      pass=test125   
        Tap Login Button  
        