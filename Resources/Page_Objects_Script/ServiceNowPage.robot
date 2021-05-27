*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Service_Now_Main_Heading} =    css=#home > div > div > div > div.main-heading
${Sub_Heading_Service_Now} =    css=#home > div > div > div > div.sub-heading
${Service_Now_Sub_Heading} =    Build cost-effective future workflows with us

*** Keywords ***

Validate Main Heading of Servcice_Now Page
    ${Main_Heading} =  get text  ${Service_Now_Main_Heading}
    should be equal as strings  ${Main_Heading}    ServiceNow®    ignore_case=true
    sleep    2s

Validate Sub Heading of Service_Now Page
    ${Sub_Heading} =    get text    ${Sub_Heading_Service_Now}
    should be equal as strings  ${Sub_Heading}    ${Service_Now_Sub_Heading}    ignore_case=true
    get selenium implicit wait