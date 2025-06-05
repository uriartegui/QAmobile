*** Keywords ***
Open app
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=${PLATFORM_NAME}    
    ...    deviceName=${DEVICE_NAME}    
    ...    app=${APP}    
    ...    automationName=${AUTOMATION_NAME}
    ...    noReset=${True}
    ...    newCommandTimeout=300
    ...    uiautomator2ServerLaunchTimeout=60000
    ...    adbExecTimeout=60000
    ...    androidInstallTimeout=120000
    ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='Atualizar']    10s
    Run Keyword If    '${status}' == 'PASS'    Press Keycode    4

Open app signup
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=${PLATFORM_NAME}    
    ...    deviceName=${DEVICE_NAME}    
    ...    app=${APP}    
    ...    automationName=${AUTOMATION_NAME}
    ...    newCommandTimeout=300
    ...    uiautomator2ServerLaunchTimeout=60000
    ...    adbExecTimeout=60000
    ...    androidInstallTimeout=120000
    
    ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='Atualizar']    10s
    Run Keyword If    '${status}' == 'PASS'    Press Keycode    4

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

    ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='Atualizar']    10s
    Run Keyword If    '${status}' == 'PASS'    Press Keycode    4

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

Swipe SeekBar By Id
    [Arguments]    ${seekbar_id}    ${to}
    ${element}=    Get Webelement    id=${seekbar_id}
    ${location}=   Get Element Location    ${element}
    ${size}=       Get Element Size        ${element}
    ${y}=          Evaluate    ${location['y']} + (${size['height']} / 2)

    IF    '${to}' == 'left'
        ${start_x}=    Evaluate    ${location['x']} + (${size['width']} * 0.9)
        ${end_x}=      Evaluate    ${location['x']} + (${size['width']} * 0.0)
    ELSE IF    '${to}' == 'right'
        ${start_x}=    Evaluate    ${location['x']} + (${size['width']} * 0.1)
        ${end_x}=      Evaluate    ${location['x']} + (${size['width']} * 1.0)
    END

    Swipe    ${start_x}    ${y}    ${end_x}    ${y}    800

Handle Layout Error
    Click Element    id=android:id/button1
    Sleep    1s
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/layoutParams    40s
    Click Element    id=br.com.intelbras.guardian:id/layoutParams