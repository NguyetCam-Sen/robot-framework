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
    set window size         width=1400  height=1090

    page should contain     Customers Are Priority One!

    # Click link
    click link              css=#SignIn
    page should contain     Login

    # Input text
    input text              id=email-id     cam.vuchaunguyet@ascendcorp.com
    input text              name=password-name      Cam123
    click button            css=#submit-id
    page should contain     Our Happy Customers

    # Add Customer Page
    click link              id=new-customer
    page should contain     Add Customer
    input text              id=EmailAddress     cam@gmail.com
    input text              id=FirstName        Vu
    input text              id=LastName         Cam
    input text              id=City             Hanoi
    select from list by value       name=state      NY
    select radio button     gender              female
    select checkbox         name=promos-name
    click button            Submit
    page should contain     New customer added

    sleep                   3s
    close browser