*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}        Android
${DEVICE_NAME}          330043a529a57479
${APP}                  C:/Users/gu062480/QAmobile/projects/guardian/base.apk
${AUTOMATION_NAME}      UiAutomator2

*** Test Cases ***
Login Nativo Guardian
    Open Application    http://localhost:4723/wd/hub    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    app=${APP}    automationName=${AUTOMATION_NAME}

    Wait Until Element Is Visible    id=br.com.intelbras.guardian.beta:id/loginButton    40s
    Click Element    id=br.com.intelbras.guardian.beta:id/loginButton

    Wait Until Element Is Visible    xpath=//android.widget.EditText[@resource-id="usernameUserInput"]    40s
    Input Text    xpath=//android.widget.EditText[@resource-id="usernameUserInput"]    guiuriartedevv@gmail.com

    Wait Until Element Is Visible    xpath=//android.widget.EditText[@resource-id="password"]    40s
    Input Text    xpath=//android.widget.EditText[@resource-id="password"]    Intelbras90@@

    Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Entrar"]    40s
    Click Element    xpath=//android.widget.Button[@text="Entrar"]

    Wait Until Element Is Visible    id=br.com.intelbras.guardian.beta:id/titleView    40s
    Element Should Contain Text    id=br.com.intelbras.guardian.beta:id/titleView    Olá

    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian.beta:id/continueButton"]    40s
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian.beta:id/continueButton"]

    Sleep    10s

    Close Application
