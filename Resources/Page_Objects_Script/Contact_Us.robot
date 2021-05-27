*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Contact_Now} =    xpath=//*[@id="wpcf7-f2111-p14-o1"]/form/div[8]/div/input[1]
${Contact_Us_Main_Heading} =    xpath=//*[@id="home"]/div/div/div/div
${Contact_Thank_You_Message} =    thank you for your application. your request has been submitted and a member of our team will be in touch shortly.
${Get_Thank_You_Text} =    css=#wpcf7-f2111-p14-o1 > form > div.wpcf7-response-output.wpcf7-display-none.wpcf7-mail-sent-ok
*** Keywords ***
Validate Main Heading of Contact Us Page
    ${Main_Heading} =  get text  ${Contact_Us_Main_Heading}
    should be equal as strings    ${Main_Heading}    Contact Us					    ignore_case=true
    sleep    2s

Fill the Form For Contact Us
    page should contain textfield    xpath=//*[@name="Ffirstname"]
    Sleep    2s
    input text    xpath=//*[@name="Ffirstname"]    Swap
    sleep    1s
    input text    xpath=//*[@name="Femail"]    Swapnil.verma@gmail.com
    sleep    1s
    input text    xpath=//*[@name="Fphone"]    98765434567

Click On Contact Us Now Button
    click element    ${Contact_Now}
    sleep    3s

Validate the Thank You Message
    ${Contact_Submitted} =    get text    ${Get_Thank_You_Text}
    should be equal as strings    ${Contact_Submitted}    ${Contact_Thank_You_Message}    ignore_case=true
    sleep    3s