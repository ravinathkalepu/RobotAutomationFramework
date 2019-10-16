*** Settings ***
Library  SeleniumLibrary 
Variables    ../Variables/variables.py

*** Keywords ***
LogintoPortal
    Input Text    name = ldap_user    ${Username}
    Input Password    name = ldap_password    ${Password}
    Click Button    name = Login
LandonCAMS
    Click Element    link=ServiceOntario Account
     Click Element    link=Environmental Permissions
     Maximize Browser Window
     Click Button    xpath = //button[@class='btn primary pull-right']
     Sleep    15    
     Switch Window    new
     Click Element     xpath = //a[@id="My Services"]/span[@class="menulink"]
