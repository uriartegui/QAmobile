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
${APP}                  C:/Users/uriarte/QAmobile/projects/guardian/base.apk        #    Diretorio do app
${AUTOMATION_NAME}      UiAutomator2        #    Nome do Automation

*** Test Cases ***
Login com sucesso
    [Tags]        login

    Open app
    
    #    Check no botão login e click após o check
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/loginButton    20s
    Click Element    id=br.com.intelbras.guardian:id/loginButton
    
    #    Check no campo de email e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    20s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    guiuriarte@gmail.com

    #    Check no campo de senha e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    20s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    Intelbras90@
    
    #    Check no botão de entrar e click após o check
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Entrar"]    20s
    Click Element    xpath=//android.widget.Button[@text="Entrar"]
    
    #    Check no botão de continuar após login e click
    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/continueButton"]    20s
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/continueButton"]

    #    Check no botão de novidade e após click
    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/startToUseButton"]    20s
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/startToUseButton"]
    
    #    Check na logo da Intelbras para verificar se chegou na dashboard
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/intelbrasLogoView    20s

    Close app

Login email errado
    [Tags]        login-email-wrong

    Open app
    
    #    Check no botão login e click após o check
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/loginButton    20s
    Click Element    id=br.com.intelbras.guardian:id/loginButton
    
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

Login senha errada
    [Tags]        login-password-wrong

    Open app
    
    #    Check no botão login e click após o check
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/loginButton    20s
    Click Element    id=br.com.intelbras.guardian:id/loginButton
    
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

Registro com sucesso
    [Tags]        register

    Open app

    #    Check no botão registro e click após o check
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/registerButton    20s
    Click Element    id=br.com.intelbras.guardian:id/registerButton

    #    Check no campo de email
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    20s
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

    #    Marca a caixa de aceitar os termos
    Wait Until Element Is Visible    xpath=//android.widget.CheckBox[contains(@text, "Termos de uso")]    20s
    Click Element    xpath=//android.widget.CheckBox[contains(@text, "Termos de uso")]

    Sleep    2s

    Click Element    xpath=//android.widget.Button[@text="Criar Conta"]

    #    Check no texto de confirmação de e-mail para checar que a conta foi criada
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Confirme sua conta"]    20s

    Close app

