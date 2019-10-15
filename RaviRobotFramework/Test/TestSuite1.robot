
*** Settings ***
Library  SeleniumLibrary  
Suite Setup    Log    I am from test Suite Setup
Suite Teardown    Log    I am from test Suite Teatdown
Test Setup    Log    I am from test case setup
Test Teardown    Log    I am from test case Teardown

Default Tags    Sanity

*** Test Cases ***
MyFristTestCase
    [Tags]    Smoke
    Log    Hello World...   
    
FirstSeleniumTestCase
     Log    Hi    
     Open Browser  ${URL}    chrome
     LoginKW
     Click Element    link=ServiceOntario Account
     Click Element    link=Environmental Permissions
     Maximize Browser Window
     Click Button    xpath = //button[@class='btn primary pull-right']
     Sleep    15    
     Switch Window    new
     Click Element     xpath = //a[@id="My Services"]/span[@class="menulink"]
     Close All Browsers
     log    test successfully completed by %{username} on %{os}
     
SecondSeleniumTestCase
    Log    HI from secondtestcase   
thirdSeleniumTestCase
    Log    HI from thirdtestcase
    
fourthSeleniumTestCase
    Log    Hi from fourthtestcase
    
FirfthSeleniumTestCase
    Log    Hi from fifthtestcase
*** Variables ***
${URL}    https://www.one-key.gov.on.ca/iaalogin/IAALogin.jsp
@{Credentials}    pvt_client3    Test123$

*** Keywords ***
LoginKW
    Input Text    name = ldap_user    @{Credentials}[0]
     Input Password    name = ldap_password    @{Credentials}[1]
     Click Button    name = Login
       
     
     

     