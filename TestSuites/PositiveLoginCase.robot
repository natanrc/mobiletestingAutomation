***Settings***
Resource                    ../pageObjects/Base.robot
Resource                    ../pageObjects/loginpages.robot
Suite Setup                 Open Login Register Application
Suite Teardown              Close Application

***Test Cases***
Login with valid data email and password
        [Documentation]                     Test to verify login functionality
        ...                                 successfully login test
        ...                                 valid email and valid password

        Clear email and password text
        Input Email                         email=natant@gmail.com
        Input Password                      pass=Test12345
        Tap Login Button  
        Verify User in homepage
        sleep       5s