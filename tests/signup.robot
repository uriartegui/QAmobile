*** Settings ***
Library    AppiumLibrary

Resource   ../resources/keywords.resource

Library    String
Library    DateTime
Library    BuiltIn
Library    Collections
Library    OperatingSystem

*** Variables ***
${PLATFORM_NAME}        Android        #    Sistema operacional
${DEVICE_NAME}          4d73cef8        #    Device do celular
${APP}                  C:/Users/uriarte/QAmobile/base.apk        #    Diretorio do app
${AUTOMATION_NAME}      UiAutomator2        #    Nome do Automation

*** Test Cases ***
Login successfully
    [Tags]        login

    Open app

    Login sucessed
    
    #    Check na logo da Intelbras para verificar se chegou na dashboard
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/intelbrasLogoView    20s

    Close app

Login with wrong email
    [Tags]        login-email-wrong

    Open app
    
    Button login
    
    #    Check no campo de email e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    20s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    guiuriarte1234@gmail.com

    #    Check no campo de senha e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    20s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    Intelbras90@
    
    #    Check no botão de entrar e click após o check
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Entrar"]    20s
    Click Element    xpath=//android.widget.Button[@text="Entrar"]
    
    #    Check no texto de tente novamente
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Falha na autenticação! Verifique novamente o nome de usuário e a senha e tente novamente."]    20s

    Close app

Login with wrong password
    [Tags]        login-password-wrong

    Open app
    
    Button login
    
    #    Check no campo de email e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    20s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    guiuriarte@gmail.com

    #    Check no campo de senha e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    20s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    Intelbras90@@
    
    #    Check no botão de entrar e click após o check
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Entrar"]    20s
    Click Element    xpath=//android.widget.Button[@text="Entrar"]
    
    #    Check no texto de tente novamente
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Falha na autenticação! Verifique novamente o nome de usuário e a senha e tente novamente."]    20s

    Close app

Register successfully
    [Tags]        register

    Open app

    Button register

    #    Check no campo aceitação de termos
    Wait Until Element Is Visible    xpath=//android.widget.CheckBox[contains(@text, "Termos de uso")]    20s
    #    Gerar e-mail aleatorio após garantir que o campo está visível
    ${timestamp}=    Get Time    epoch
    ${email}=    Set Variable    teste${timestamp}@gmail.com
    #    Preencher o campo de e-mail com o valor gerado
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    ${email}
    
    #    Check no campo de nome e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    20s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    Guilherme

    #    Check no campo de sobrenome e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[3]/android.widget.EditText    20s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[3]/android.widget.EditText    Uriarte
    
    #    Check no campo de senha e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[4]/android.widget.EditText    20s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[4]/android.widget.EditText    Intelbras90@@

    Checkbox register

    Sleep    2s

    #    Click no botão criar conta
    Click Element    xpath=//android.widget.Button[@text="Criar Conta"]

    #    Check no texto de confirmação de e-mail para checar que a conta foi criada
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Confirme sua conta"]    20s

    Close app

Register with invalid data
    [Tags]        register-data-wrong

    Open app

    Button register

    Checkbox register

    #    Check mensagem de email invalido
    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="email-error"]    20s

    #    Check mensagem de nome invalido
    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="firstname-error"]    20s

    #    Check mensagem de sobrenome invalido
    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="lastname-error"]    20s

    #    Check mensagem de senha invalida
    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="password-error"]    20s

    Close app

Checking the "Create an account" and "Login" buttons on the signup screens
    [Tags]        verification-buttons-signup

    Open app

    Button login

    #    Check no botão "Crie uma conta" e click após o check
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Crie uma conta"]    20s
    Click Element    xpath=//android.widget.TextView[@text="Crie uma conta"]

    #    Check no botão "Entrar" e click após o check
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Entrar"]    20s
    Click Element    xpath=//android.widget.TextView[@text="Entrar"]

    Close app

Forgot password button
    [Tags]        forgot-password

    Open app

    Button login

    #    Check no botão "Esqueceu a senha?" e click após o check
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Esqueceu a senha?"]    20s
    Click Element    xpath=//android.widget.TextView[@text="Esqueceu a senha?"]

    #    Check no campo de email para verificação
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Recuperar senha"]    20s

    Close app
