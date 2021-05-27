*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Click on Cookies Button
     click button    id=catapultCookie

Verify Page Load
     wait until page contains    InfoBeans