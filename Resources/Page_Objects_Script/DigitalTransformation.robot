*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Digital Transformation_Get_Main_Heading} =    css=#home > div > div > div > div.main-heading
${Sub_Heading_Digital Transformation} =    css=#home > div > div > div > div.sub-heading
${Digital Transformation_Sub_Heading} =    From leadership-level strategy to ground level implementation

*** Keywords ***
Validate Main Heading of Digital Transformation Page
    ${Main_Heading} =  get text  ${Digital Transformation_Get_Main_Heading}
    should be equal as strings  ${Main_Heading}    Digital Transformation                        ignore_case=true
    sleep    2s
Validate Sub Heading of Digital Transformation Page
    ${Sub_Heading} =    get text    ${Sub_Heading_Digital Transformation}
    should be equal as strings  ${Sub_Heading}    ${Digital Transformation_Sub_Heading}    ignore_case=true
    sleep    2s