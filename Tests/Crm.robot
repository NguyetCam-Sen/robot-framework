*** Settings ***
Documentation    This is the basic info about the whole suite
Library          SeleniumLibrary

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test
    [Tags]                  1006   Smoke   Contacts
    # Initialize Selenium
    set selenium speed      .2s
    set selenium timeout    10s

    # Open the browser
    log                     Starting the test case!
    open browser            http://automationplayground.com/crm/       chrome

    # Resize browser window for recording
    set window position     x=10   y=169
    set window size         width=1600  height=1090

    sleep                   3s
    close browser