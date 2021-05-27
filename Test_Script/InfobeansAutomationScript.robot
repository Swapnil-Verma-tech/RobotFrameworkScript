*** Settings ***
Documentation  Talk about what this suite of tests does
Resource    ../Resources/InfoBeansAutomationScriptApp.robot
Resource  ../Resources/BaseCommonScript.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

#robot -d results --timestampoutputs Test_Script/InfobeansAutomationScript.robot

*** Variables ***
${BROWSER} =  Firefox
${URL_Beta} =  https://beta.infobeans.com/
${URL_Live} =  https://www.infobeans.com/

*** Test Cases ***
Test-Case-1 Validate the ServiceNow Page Load and Text of Main and Sub Heading on Page
    [Documentation]  This test-case verify the Page load with Main and Sub Heading of Service Now page
    [Tags]  Test-case-1 Service Now Page

    InfoBeansAutomationScriptApp.Go to Landing Page of Beta
    InfoBeansAutomationScriptApp.Click on Cookies Button on Main Page
    InfoBeansAutomationScriptApp.Verify the InfoBeans Page Load
    InfoBeansAutomationScriptApp.Click On MainMenu Beta Link
    InfoBeansAutomationScriptApp.Click On ServiceNow Link in Main Menu
    InfoBeansAutomationScriptApp.Validation Of Main Heading Of ServiceNow Page
    InfoBeansAutomationScriptApp.Validation Of Sub Heading Of ServiceNow Page

Test-Case-2 Validate the Digital Transformation Page Load and Text of Main and Sub Heading on Page
    [Documentation]    This test-case verify the page load with Main and Sub Heading of Digital Transformation Page
    [Tags]    Test-case-2 Digital transformation Page
    InfoBeansAutomationScriptApp.Go to Landing Page of Beta
    InfoBeansAutomationScriptApp.Click on Cookies Button on Main Page
    InfoBeansAutomationScriptApp.Verify the InfoBeans Page Load
    Infobeansautomationscriptapp.click on digital transformation link on main page of infobeans
    InfoBeansAutomationScriptApp.Validation of Main Heading of Digital Transformaton Page
    InfoBeansAutomationScriptApp.Validation of Sub Heanding of Digital Transformation Page

Test-Case-3 Validate the Case Studies page and Download a Case Study
    [Documentation]    This test-case verify the page load with Main and Sub Heading of Case Studies and Download the Case Study Page
    [Tags]    Test-Case-3 Case Studies Page
    InfoBeansAutomationScriptApp.Go to Landing Page of Beta
    InfoBeansAutomationScriptApp.Click on Cookies Button on Main Page
    InfoBeansAutomationScriptApp.Verify the InfoBeans Page Load
    InfoBeansAutomationScriptApp.Click On MainMenu Beta Link
    InfoBeansAutomationScriptApp.Click on Resources link in Main Menu
    InfoBeansAutomationScriptApp.Click on CaseStudies link in Main Menu
    InfoBeansAutomationScriptApp.Validation of Main Heading of Case Studies Page
    InfoBeansAutomationScriptApp.Click on download icon on case studies page
    InfoBeansAutomationScriptApp.Fill the form to download case study
    InfoBeansAutomationScriptApp.Validate the Thank you message after submission of form on page

Test-Case-4 Validate Contact us page and submit Form
    [Documentation]    This test-case verify the page load with Main and Sub Heading of Case Studies and Download the Case Study Page
    [Tags]    Test-Case-4 Contact Us Page
    InfoBeansAutomationScriptApp.Go to Landing Page of live
    InfoBeansAutomationScriptApp.Click on Cookies Button on Main Page
    InfoBeansAutomationScriptApp.Verify the InfoBeans Page Load
    InfoBeansAutomationScriptApp.Click On MainMenu Live Link
    InfoBeansAutomationScriptApp.Click on Contact us link in Main Menu
    InfoBeansAutomationScriptApp.Validation of Main Heading of Contact Us Page
    InfoBeansAutomationScriptApp.Fill the Contact Us Form on Contact us Page
    InfoBeansAutomationScriptApp.Click on Contact Us Now on Page
    InfoBeansAutomationScriptApp.Validate the form submission success message

Test-Case-5 Validate Sitemap heading and click on link
    [Documentation]    This test-case verify the page load with Main Heading of pages and Navigate to different Page
    [Tags]    Test-Case-5 SiteMap Page
    InfoBeansAutomationScriptApp.Go to Landing Page of Beta
    InfoBeansAutomationScriptApp.Click on Cookies Button on Main Page
    InfoBeansAutomationScriptApp.Verify the InfoBeans Page Load
    InfoBeansAutomationScriptApp.SiteMap link on Main Page
    InfoBeansAutomationScriptApp.Validation of Main Heading of SiteMap on Page
    InfoBeansAutomationScriptApp.Click on "Automation" link on SiteMap Page
    InfoBeansAutomationScriptApp.Validation of Main Heading on Automation Page
    InfoBeansAutomationScriptApp.Click Know More link on "Automation" Page
    InfoBeansAutomationScriptApp.Validation of Main Heading of "Robotic Process Automation" Page
    InfoBeansAutomationScriptApp.Validation of Sub Heading of "Robotic Process Automation" Page


