*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CaseStudies_Main_Heading} =    css=#home > div > div > div > div
${Download_Button} =    xpath=/html/body/section[2]/div/div/div/div[2]/div/div[1]/div[1]/span/div[2]/form/div[5]/div/p/input
${Thank_You_Message} =    css=#wpcf7-f9861-o4 > form > div.wpcf7-response-output.wpcf7-display-none.wpcf7-mail-sent-ok
${Download_Icon} =    xpath=//*[@id="load_more"]/div[1]/div[2]/div[2]/div[1]/img
${Full_Name} =  css=#wpcf7-f9861-o4 > form > div:nth-child(3) > div:nth-child(1) > div > span > input
${Email} =    xpath=//*[@id="wpcf7-f9861-o4"]/form/div[3]/div[2]/div/span/input
*** Keywords ***
Validate Main Heading of Servcice_Now Page
    ${Main_Heading} =  get text  ${CaseStudies_Main_Heading}
    should be equal as strings  ${Main_Heading}    Case Studies                        ignore_case=true
    get selenium implicit wait

Click on Download icon
    click element    ${Download_Icon}

Fill the form
    page should contain textfield    css=#wpcf7-f9861-o4 > form > div:nth-child(3) > div:nth-child(1) > div > span > input
    get selenium implicit wait
    input text    ${Full_Name}    Casestudies
    sleep    1s
    input text    ${Email}    swapnilk.verma@infobeans.com
    sleep    1s
    click element    ${Download_Button}
    sleep    3s

Validate Download Thankyou message
    ${Download_Message} =  get text  ${Thank_You_Message}
    should be equal as strings  ${Download_Message}  Thank you for your message. It has been sent.  ignore_case=true
    sleep    2s