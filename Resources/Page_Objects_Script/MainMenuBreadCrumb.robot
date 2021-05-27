*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Click on 3 line Breadcrumbs Beta
    click element    xpath=//*[@id="toggles"]
    sleep    3s

Click on 3 line Breadcrumbs Live
    click element    xpath=//*[@id="toggle"]
    sleep    3s

Click on ServiceNow on Main Menu
    click link    link=ServiceNow
    sleep    3s

Click on Digital Transformation Link
    click link    link=View Digital Transformation Services
    sleep    3 sec

Move to Resourse link on MainMenu Page
    #click link    link=Resources
    mouse over    link=RESOURCES
    sleep    3s
Click on CaseStudies link on MainMenu Page
    click link    link=Case Studies

Click on Contact us link on Mainmenu Page
    click element    id=menu-item-5745