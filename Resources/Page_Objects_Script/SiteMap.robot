*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Automation_link} =    css=#sitemap-details-block > div > ul > li:nth-child(3) > ul > li:nth-child(2) > a

*** Keywords ***
Click on SiteMap on Main Page of Site
    click link    xpath=/html/body/footer/div[1]/div[3]/ul/li[1]/a
    sleep    2s

Validate Heading on Page
    ${Main_Heading} =    get text    xpath=//*[@id="home"]/div/div/div/div
    should be equal as strings    ${Main_Heading}    Sitemap                     ignore_case=true
    get selenium implicit wait
Click on Automation link
    click link    ${Automation_link}
    get selenium implicit wait

Validate Main Heading on Page
    ${Main_Heading} =    get text    css=#home > div > div > div > div
    should be equal as strings    ${Main_Heading}    Automation                    ingore_case=true

Click on Know More
    click link    css=#cta-block > div:nth-child(1) > a

Validate Page Heading
    ${Main_Heading} =    get text    css=#home > div > div > div > div.main-heading
    should be equal as strings    ${Main_Heading}    Robotic Process Automation                    ingore_case=true

Validate Sub Heading on Page
    ${Sub_Heading} =    get text    css=#home > div > div > div > div.sub-heading
    should be equal as strings    ${Sub_Heading}    Accelerate your UiPath ROI with our RPA solution    ingore_case=true
