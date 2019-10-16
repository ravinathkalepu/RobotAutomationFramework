
*** Settings ***
Library  SeleniumLibrary 
Variables    ../Test/Variables/variables.py
Resource    Resource/keywords.resource
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
     LogintoPortal
     LandonCAMS
     Click Element    xpath=//*[@id="startServicesLinkId"]  
     Click Element    xpath=//*[@id="startServices"]/div[1]/div/div[2]/div[2]/div/a
     #Click Element    xpath=/html/body/div[8]/div/div/div[3]/button[2]
     Select Checkbox    xpath=//*[@id="maincontent"]/selectactivity/div/div/div/div/div/div/fieldset/div/div[2]/div/label/span/span[3]/span
     #Close All Browsers
     log    test successfully completed by %{username} on %{os}
     
SecondSeleniumTestCase
    Log    HI from secondtestcase   
thirdSeleniumTestCase
    Log    HI from thirdtestcase
    
fourthSeleniumTestCase
    Log    Hi from fourthtestcase
    
FirfthSeleniumTestCase
    Log    Hi from fifthtestcase
#*** Variables ***
#${URL}    https://www.one-key.gov.on.ca/iaalogin/IAALogin.jsp
#@{Credentials}    pvt_client3    Test123$


     
     
     

     