*** Keywords ***
Open app
    Open Application    http://localhost:4723
    ...    platformName=${PLATFORM_NAME}    
    ...    deviceName=${DEVICE_NAME}    
    ...    app=${APP}    
    ...    automationName=${AUTOMATION_NAME}
    ...    noReset=${True}
    ...    newCommandTimeout=300
    ...    uiautomator2ServerLaunchTimeout=60000
    ...    adbExecTimeout=60000
    ...    androidInstallTimeout=120000

Open app signup
    Open Application    http://localhost:4723
    ...    platformName=${PLATFORM_NAME}    
    ...    deviceName=${DEVICE_NAME}    
    ...    app=${APP}    
    ...    automationName=${AUTOMATION_NAME}
    ...    newCommandTimeout=300
    ...    uiautomator2ServerLaunchTimeout=60000
    ...    adbExecTimeout=60000
    ...    androidInstallTimeout=120000

Close app
    Close Application

Button login
    #    Check no botão login e click após o check
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/loginButton    40s
    Click Element    id=br.com.intelbras.guardian:id/loginButton

Button register
    #    Check no botão registro e click após o check
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/registerButton    40s
    Click Element    id=br.com.intelbras.guardian:id/registerButton

Checkbox register
    #    Marca a caixa de aceitar os termos em register
    Wait Until Element Is Visible    xpath=//android.widget.CheckBox[contains(@text, "Termos de uso")]    40s
    Click Element    xpath=//android.widget.CheckBox[contains(@text, "Termos de uso")]

Login sucessed
    Button login
    
    #    Check no campo de email e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    40s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[1]/android.widget.EditText    guiuriarteautomatizado@gmail.com

    #    Check no campo de senha e digita após o check
    Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    40s
    Input Text    xpath=//android.webkit.WebView[@text="Conta Intelbras - O que você precisa em um só lugar"]/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View[2]/android.widget.EditText    Intelbras90@@
    
    #    Check no botão de entrar e click após o check
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Entrar"]    40s
    Click Element    xpath=//android.widget.Button[@text="Entrar"]
    
    #    Check no botão de continuar após login e click
    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/continueButton"]    40s
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/continueButton"]

    #    Check no botão de novidade e após click
    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/startToUseButton"]    40s
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/startToUseButton"]

    #    Permissão opcional (ex: notificações) — só clica se aparecer
    ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button    5s
    Run Keyword If    '${status}' == 'PASS'    Click Element    id=com.android.permissioncontroller:id/permission_allow_button

Button add
    Wait Until Element Is Visible    accessibility_id=BOTTOM_NAV_BUTTON-Adicionar    40s
    Click Element    accessibility_id=BOTTOM_NAV_BUTTON-Adicionar

Logo dashboard view
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/intelbrasLogoView    40s

Button menu
    Wait Until Element Is Visible    accessibility_id=BOTTOM_NAV_BUTTON-Menu    40s
    Click Element    accessibility_id=BOTTOM_NAV_BUTTON-Menu

Clicar se estiver visível
    [Arguments]    ${element_id}    ${timeout}=5s
    ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${element_id}    ${timeout}
    Run Keyword If    '${status}' == 'PASS'    Click Element    ${element_id}