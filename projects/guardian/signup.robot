*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}        Android
${DEVICE_NAME}          RXCW30BYHNL
${APP}                  C:/Users/gu062480/QAmobile/projects/guardian/base.apk
${AUTOMATION_NAME}      UiAutomator2

*** Test Cases ***
Login Nativo Guardian
    Open Application    http://localhost:4723/wd/hub    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    app=${APP}    automationName=${AUTOMATION_NAME}

    Wait Until Element Is Visible    id=br.com.intelbras.guardian.beta:id/loginButton    20s
    Click Element    id=br.com.intelbras.guardian.beta:id/loginButton

    Wait Until Element Is Visible    xpath=//android.widget.EditText[@resource-id="usernameUserInput"]    20s
    Input Text    xpath=//android.widget.EditText[@resource-id="usernameUserInput"]    guiuriartedevv@gmail.com

    Wait Until Element Is Visible    xpath=//android.widget.EditText[@resource-id="password"]    20s
    Input Text    xpath=//android.widget.EditText[@resource-id="password"]    Intelbras90@@

    Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Entrar"]    10s
    Click Element    xpath=//android.widget.Button[@text="Entrar"]

    Wait Until Element Is Visible    id=br.com.intelbras.guardian.beta:id/titleView    20s
    Element Should Contain Text    id=br.com.intelbras.guardian.beta:id/titleView    Olá

    Close Application
