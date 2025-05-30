*** Keywords ***
Open app
    #        Abrir aplicativo Guardian
    Open Application    http://localhost:4723    
    ...    platformName=${PLATFORM_NAME}    
    ...    deviceName=${DEVICE_NAME}    
    ...    app=${APP}    
    ...    automationName=${AUTOMATION_NAME}

Close app
    Close Application

Button login
    #    Check no botão login e click após o check
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/loginButton    20s
    Click Element    id=br.com.intelbras.guardian:id/loginButton

Button register
    #    Check no botão registro e click após o check
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/registerButton    20s
    Click Element    id=br.com.intelbras.guardian:id/registerButton

Checkbox register
    #    Marca a caixa de aceitar os termos em register
    Wait Until Element Is Visible    xpath=//android.widget.CheckBox[contains(@text, "Termos de uso")]    20s
    Click Element    xpath=//android.widget.CheckBox[contains(@text, "Termos de uso")]

Login sucessed
    
    Button login
    
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