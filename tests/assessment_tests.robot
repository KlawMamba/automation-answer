*** Settings ***
Library    SeleniumLibrary
Library    ../resources/variables.py

*** Variables ***
${URL}            https://automationinterface1.front.staging.optimy.net/en/
${USERNAME}       optimyautomationtester@gmail.com
${PASSWORD}       yRMhojb7
${email_domain}    @example.com
${random_length}   10

*** Test Cases ***
Submit A New Application Successfully
    [Documentation]    Automates the application submission process and validates successful submission.
    [Tags]             SmokeTest
    Given I go to the URL provided
    And I handle cookie consent
    When I log in with valid credentials given
    And I submit a new application
    And I fill out the form with unique and random data
    Then I should verify the summary page of the data
    And I validate and send the application
    Then I should verify the "Thank you for submitting your project" page

*** Keywords ***
I go to the URL provided
    Open Browser    ${URL}    chrome
    Maximize Browser Window

I handle cookie consent
    Wait Until Element Is Visible    css=button#cookie-allow-all-button
    Click Button    css=button#cookie-allow-all-button

I log in with valid credentials given
    Click Element  css=a[href="/en/user/login/"]
    Input Text    css=input#login-email    ${USERNAME}
    Input Text    css=input[type="password"]    ${PASSWORD}
    Click Button  css=button[type="submit"]

I submit a new application
    Wait Until Page Contains Element    css=a[href="/en/project/new/"]
    Click Element    css=a[href="/en/project/new/"]

Generate Random Data
    [Arguments]    ${length}
    ${length}=    Convert To Integer    ${length}  # Ensure length is an integer
    ${random_name}=    Generate Random String    ${length}
    ${random_email}=   Generate Random Email
    ${random_phone}=   Generate Random Phone
    RETURN    ${random_name}    ${random_email}    ${random_phone}

I fill out the form with unique and random data
    ${random_name}    ${random_email}    ${random_phone}=    Generate Random Data    ${random_length}
    Input Text    css=input[name="name"]          ${random_name}
    Input Text    css=input[name="email"]           ${random_email}
    Input Text    css=input[name="phone"]           ${random_phone}
    Click Button  css=button#next

I should verify the summary page of the data

I validate and send the application

I should verify the "Thank you for submitting your project" page
    Wait Until Page Contains    Thank you for submitting your project
    Close Browser
