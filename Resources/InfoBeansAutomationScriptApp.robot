*** Settings ***

Resource  ../Resources/Page_Objects_Script/Landing.robot
Resource    C:/Users/Swapnil.Verma/PycharmProjects/Infobeans_Web/Resources/Page_Objects_Script/Cookies.robot
Resource    C:/Users/Swapnil.Verma/PycharmProjects/Infobeans_Web/Resources/Page_Objects_Script/MainMenuBreadCrumb.robot
Resource    C:/Users/Swapnil.Verma/PycharmProjects/Infobeans_Web/Resources/Page_Objects_Script/ServiceNowPage.robot
Resource    C:/Users/Swapnil.Verma/PycharmProjects/Infobeans_Web/Resources/Page_Objects_Script/DigitalTransformation.robot
Resource    C:/Users/Swapnil.Verma/PycharmProjects/Infobeans_Web/Resources/Page_Objects_Script/CaseStudies.robot
Resource    C:/Users/Swapnil.Verma/PycharmProjects/Infobeans_Web/Resources/Page_Objects_Script/Contact_Us.robot
Resource    C:/Users/Swapnil.Verma/PycharmProjects/Infobeans_Web/Resources/Page_Objects_Script/SiteMap.robot

*** Variables ***


*** Keywords ***
Go to Landing Page of Beta
    Landing.Navigate To Beta URl

Go to Landing Page of Live
    Landing.Navigate To Live URl

Click on Cookies Button on Main Page
    Cookies.Click on Cookies Button

Verify the InfoBeans Page Load
    Cookies.Verify Page Load

Click on MainMenu Beta Link
    MainMenuBreadCrumb.Click on 3 line Breadcrumbs Beta

Click on MainMenu Live Link
    MainMenuBreadCrumb.Click on 3 line Breadcrumbs Live

Click on ServiceNow Link in Main Menu
    mainmenubreadcrumb.click on servicenow on main menu

Validation of Main Heading of ServiceNow Page
    ServiceNowPage.Validate Main Heading of Servcice_Now Page

Validation of Sub Heading of ServiceNow Page
    ServiceNowPage.Validate Sub Heading of Service_Now Page

Click on Digital Transformation link on Main Page of Infobeans
    MainMenuBreadCrumb.Click on Digital Transformation Link

Validation of Main Heading of Digital Transformaton Page
    DigitalTransformation.Validate Main Heading of Digital Transformation Page
Validation of Sub Heanding of Digital Transformation Page
    DigitalTransformation.Validate Sub Heading of Digital Transformation Page

Click on Resources link in Main Menu
    MainMenuBreadCrumb.Move to Resourse link on MainMenu Page

Click on CaseStudies link in Main Menu
    MainMenuBreadCrumb.Click on CaseStudies link on MainMenu Page

Validation of Main Heading of Case Studies Page
    CaseStudies.Validate Main Heading of Servcice_Now Page

Click on download icon on case studies page
    CaseStudies.Click on Download icon

Fill the form to download case study
    CaseStudies.Fill the form

Validate the Thank you message after submission of form on page
    CaseStudies.Validate Download Thankyou message

Click on Contact us link in Main Menu
    MainMenuBreadCrumb.Click on Contact us link on Mainmenu Page

Validation of Main Heading of Contact Us Page
    Contact_Us.Validate Main Heading of Contact Us Page

Fill the Contact Us Form on Contact us Page
    Contact_Us.Fill the Form For Contact Us

Click on Contact Us Now on Page
    Contact_Us.Click On Contact Us Now Button

Validate the form submission success message
    Contact_Us.Validate the Thank You Message

SiteMap link on Main Page
  SiteMap.Click on SiteMap on Main Page of Site

Validation of Main Heading of SiteMap on Page
    SiteMap.Validate Heading on Page

Click on "Automation" link on SiteMap Page
    SiteMap.Click on Automation link

Validation of Main Heading on Automation Page
    SiteMap.Validate Main Heading on Page

Click Know More link on "Automation" Page
    SiteMap.Click on Know More

Validation of Main Heading of "Robotic Process Automation" Page
    SiteMap.Validate Page Heading

Validation of Sub Heading of "Robotic Process Automation" Page
    SiteMap.Validate Sub Heading on Page


