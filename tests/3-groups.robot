*** Settings ***
Library    AppiumLibrary

Resource   ../resources/keywords.resource
Resource   ../resources/keywords.resource

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

QTJH1F1 - Criar novo Grupo pelo botão +
    [Tags]    add-group

    Open app

    Button add

    Wait Until Element Is Visible    accessibility_id=BUTTON-Grupo    40s
    Click Element    accessibility_id=BUTTON-Grupo

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/groupTip    40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/nameEditText    40s
    Input Text    id=br.com.intelbras.guardian:id/nameEditText    teste123

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/colorEditText    40s
    Click Element    id=br.com.intelbras.guardian:id/colorEditText

    ${CORES_DISPONIVEIS}=    Create List
    ...    COLOR-PURPLE
    ...    COLOR-BLUE
    ...    COLOR-YELLOW
    ...    COLOR-AQUA
    ...    COLOR-GREEN
    ...    COLOR-BROWN
    ...    COLOR-RED
    ...    COLOR-ORANGE
    ...    COLOR-PINK
    ...    COLOR-INDIGO

    FOR    ${COR}    IN    @{CORES_DISPONIVEIS}
        ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=${COR}    5s
        Run Keyword If    '${status}' == 'PASS'    Click Element    accessibility_id=${COR}
        Run Keyword If    '${status}' == 'PASS'    Exit For Loop
    END

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/nextButton    40s
    Click Element    id=br.com.intelbras.guardian:id/nextButton

    Wait Until Element Is Visible    accessibility_id=ARROW_ICON-Alarme    40s
    Click Element    accessibility_id=ARROW_ICON-Alarme

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/name    40s
    Click Element    id=br.com.intelbras.guardian:id/name

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/nextButton    40s
    Click Element    id=br.com.intelbras.guardian:id/nextButton

    Logo dashboard view

    Close app

QTJH1F4 - Incluir dispositivo em um grupo
    [Tags]        overflow-add-group

    Open app
    
    Wait Until Element Is Visible    accessibility_id=POPUP_VIDEO-VIPW-1300-MINI-SD    40s
    Click Element    accessibility_id=POPUP_VIDEO-VIPW-1300-MINI-SD

    Wait Until Element Is Visible    accessibility_id=ADD_TO_GROUP_VIDEO-VIPW-1300-MINI-SD    40s
    Click Element    accessibility_id=ADD_TO_GROUP_VIDEO-VIPW-1300-MINI-SD

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/groupView    40s
    Click Element    id=br.com.intelbras.guardian:id/groupView

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/confirm    40s
    Click Element    id=br.com.intelbras.guardian:id/confirm

    Logo dashboard view
    
    Close app

QTJH1F7 - Excluir Grupo
    [Tags]        remove-group

    Open app

    Button menu

    Wait Until Element Is Visible    accessibility_id=BUTTON-Grupos    40s
    Click Element    accessibility_id=BUTTON-Grupos

    Wait Until Element Is Visible    accessibility_id=POPUP_MENU-teste123    40s
    Click Element    accessibility_id=POPUP_MENU-teste123

    Wait Until Element Is Visible    accessibility_id=REMOVE_GROUP-TESTE123    40s
    Click Element    accessibility_id=REMOVE_GROUP-TESTE123

    Wait Until Element Is Visible    id=android:id/button1    40s
    Click Element    id=android:id/button1

    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=Navigate up    5s
    Run Keyword And Ignore Error    Click Element    accessibility_id=Navigate up

    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=Navegar para cima    5s
    Run Keyword And Ignore Error    Click Element    accessibility_id=Navegar para cima

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/intelbrasLogo    40s

    Close app


    	


    	



    	

