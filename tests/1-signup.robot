*** Settings ***
Library    AppiumLibrary

Resource   ../resources/keywords.resource
Resource    ../resources/keywords.resource

Library    String
Library    DateTime
Library    BuiltIn
Library    Collections
Library    OperatingSystem

*** Variables ***
${PLATFORM_NAME}        Android        #    Sistema operacional
${DEVICE_NAME}          RXCW30BYHNL    #    Device do celular
${APP}                  C:/Users/gu062480/QAmobile/base.apk        #    Diretorio do app
${AUTOMATION_NAME}      UiAutomator2        #    Nome do Automation

*** Test Cases ***
Login successfully
    [Tags]        login

    Open app signup

    Login sucessed
    
    Logo dashboard view

    Close app

Login with wrong email
    [Tags]        login-email-wrong

    Open app signup
    
    Button login
    
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    40s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    guiuriarte1234@gmail.com

    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    40s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    Intelbras90@
    
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Entrar"]    40s
    Click Element    xpath=//android.widget.Button[@text="Entrar"]
    
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Falha na autenticação! Verifique novamente o nome de usuário e a senha e tente novamente."]    40s

    Close app

Login with wrong password
    [Tags]        login-password-wrong

    Open app signup
    
    Button login
    
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    40s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    guiuriarteautomatizado@gmail.com

    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    40s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    Intelbras90@@@
    
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Entrar"]    40s
    Click Element    xpath=//android.widget.Button[@text="Entrar"]
    
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Falha na autenticação! Verifique novamente o nome de usuário e a senha e tente novamente."]    40s

    Close app

Register successfully
    [Tags]        register

    Open app signup

    Button register

    Wait Until Element Is Visible    xpath=//android.widget.CheckBox[contains(@text, "Termos de uso")]    40s
    ${timestamp}=    Get Time    epoch
    ${email}=    Set Variable    teste${timestamp}@gmail.com
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    ${email}
    
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    40s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    Guilherme

    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[3]/android.widget.EditText    40s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[3]/android.widget.EditText    Uriarte
    
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[4]/android.widget.EditText    40s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[4]/android.widget.EditText    Intelbras90@@

    Checkbox register

    Sleep    2s

    Click Element    xpath=//android.widget.Button[@text="Criar Conta"]

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Confirme sua conta"]    40s

    Close app

Register with invalid data
    [Tags]        register-data-wrong

    Open app signup

    Button register

    Checkbox register

    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="email-error"]    40s

    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="firstname-error"]    40s

    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="lastname-error"]    40s

    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="password-error"]    40s

    Close app

Checking the "Create an account" and "Login" buttons on the signup screens
    [Tags]        verification-buttons-signup

    Open app signup

    Button login

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Crie uma conta"]    40s
    Click Element    xpath=//android.widget.TextView[@text="Crie uma conta"]

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Entrar"]    40s
    Click Element    xpath=//android.widget.TextView[@text="Entrar"]

    Close app

Forgot password button
    [Tags]        forgot-password

    Open app signup

    Button login

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Esqueceu a senha?"]    40s
    Click Element    xpath=//android.widget.TextView[@text="Esqueceu a senha?"]

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Recuperar senha"]    40s

    Close app
