*** Settings ***
Library    AppiumLibrary

Resource   ../resources/keywords.resource
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

    Wait Until Element Is Visible    accessibility_id=ACTIVATE_ALARM-AMT 2018 E/EG    60s
    Click Element    accessibility_id=ACTIVATE_ALARM-AMT 2018 E/EG

    Sleep    60s

    ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    id=android:id/button1    60s
    Run Keyword If    '${status}' == 'PASS'    Click Element    id=android:id/button1

    Close app

NDAFVG1 - Criar nova Regra de Associação pelo Menu Lateral
    [Tags]        add-rule

    Open app

    Button add

    Wait Until Element Is Visible    accessibility_id=BUTTON-Regra de associação    40s
    Click Element    accessibility_id=BUTTON-Regra de associação

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/nameEditText    40s
    Input Text    id=br.com.intelbras.guardian:id/nameEditText    teste123

    Wait Until Element Is Visible    accessibility_id=CARD-Origem    40s
    Click Element    accessibility_id=CARD-Origem

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/dialogDescription    40s
    
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/deviceHeader    40s
    Click Element    id=br.com.intelbras.guardian:id/deviceHeader

    ${SETORES_DISPONIVEIS}=    Create List
    ...    SECTOR-Setor 2
    ...    SECTOR-Setor 3
    ...    SECTOR-Setor 4
    ...    SECTOR-Setor 5
    ...    SECTOR-Setor 6
    ...    SECTOR-Setor 7
    ...    SECTOR-Setor 8
    ...    SECTOR-Setor 9
    ...    SECTOR-Setor 10
    ...    SECTOR-Setor 11
    ...    SECTOR-Setor 12
    ...    SECTOR-Setor 13
    ...    SECTOR-Setor 14
    ...    SECTOR-Setor 15

    FOR    ${SETOR}    IN    @{SETORES_DISPONIVEIS}
        ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=${SETOR}    3s
        Run Keyword If    '${status}' == 'PASS'    Click Element    accessibility_id=${SETOR}
        Run Keyword If    '${status}' == 'PASS'    Exit For Loop
    END

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/save    40s
    Click Element    id=br.com.intelbras.guardian:id/save

    Wait Until Element Is Visible    accessibility_id=CARD-Ação    40s
    Click Element    accessibility_id=CARD-Ação

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/dialogDescription    40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/addChannelCardHeader    40s
    Click Element    id=br.com.intelbras.guardian:id/addChannelCardHeader

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/channelNameChip    40s
    Click Element    id=br.com.intelbras.guardian:id/channelNameChip

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/save    40s
    Click Element    id=br.com.intelbras.guardian:id/save

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/save    40s
    Click Element    id=br.com.intelbras.guardian:id/save

    Wait Until Element Is Visible    id=android:id/button1    40s
    Click Element    id=android:id/button1

    Logo dashboard view

    Close app

NDAFVG6 - Verificar evento de disparo com associação
    [Tags]        check-event-rule

    Open app

    Wait Until Element Is Visible    accessibility_id=DEACTIVATE_ALARM-AMT 2018 E/EG    40s
    Click Element    accessibility_id=DEACTIVATE_ALARM-AMT 2018 E/EG

    Sleep    60s

    ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    id=android:id/button1    60s
    Run Keyword If    '${status}' == 'PASS'    Click Element    id=android:id/button1

    Wait Until Element Is Visible    accessibility_id=SECTORS_ALARM-AMT 2018 E/EG    40s
    Click Element    accessibility_id=SECTORS_ALARM-AMT 2018 E/EG

    Wait Until Element Is Visible    accessibility_id=SECTOR-Setor 2    40s
    Click Element    accessibility_id=SECTOR-Setor 2

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/bypassSwitch    40s
    Click Element    id=br.com.intelbras.guardian:id/bypassSwitch

    Sleep    5s

    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=Navigate up    5s
    Run Keyword And Ignore Error    Click Element    accessibility_id=Navigate up

    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=Navegar para cima    5s
    Run Keyword And Ignore Error    Click Element    accessibility_id=Navegar para cima

    Sleep    5s

    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=Navigate up    5s
    Run Keyword And Ignore Error    Click Element    accessibility_id=Navigate up

    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=Navegar para cima    5s
    Run Keyword And Ignore Error    Click Element    accessibility_id=Navegar para cima

    Logo dashboard view

    Wait Until Element Is Visible    accessibility_id=ACTIVATE_ALARM-AMT 2018 E/EG    40s
    Click Element    accessibility_id=ACTIVATE_ALARM-AMT 2018 E/EG

    Sleep    60s

    ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    id=android:id/button1    60s
    Run Keyword If    '${status}' == 'PASS'    Click Element    id=android:id/button1

    Sleep    10s

    Wait Until Element Is Visible    accessibility_id=BOTTOM_NAV_BUTTON-Eventos    40s
    Click Element    accessibility_id=BOTTOM_NAV_BUTTON-Eventos

    ${status}    ${msg}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    id=android:id/button1    60s
    Run Keyword If    '${status}' == 'PASS'    Click Element    id=android:id/button1

    Wait Until Keyword Succeeds    3x    5s    Click Element    id=br.com.intelbras.guardian:id/thumbnail

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/eventChip    40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/eventDateLabel    40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/eventHourLabel    40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/eventTypeLabel    40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/thumbnail   40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/downloadButton   40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/shareButton    40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/playerButton    40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/deactivateAlarmButton    40s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/dialToEmergencyButton    40s

    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=Navigate up    5s
    Run Keyword And Ignore Error    Click Element    accessibility_id=Navigate up

    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=Navegar para cima    5s
    Run Keyword And Ignore Error    Click Element    accessibility_id=Navegar para cima

    Wait Until Element Is Visible    accessibility_id=BOTTOM_NAV_BUTTON-Eventos    40s

    Close app

Remove rule
    [Tags]        remove-rule

    Open app

    Button menu

    Wait Until Element Is Visible    accessibility_id=BUTTON-Regra de associação    40s
    Click Element    accessibility_id=BUTTON-Regra de associação

    Wait Until Element Is Visible    accessibility_id=POPUP_MENU-teste123    40s
    Click Element    accessibility_id=POPUP_MENU-teste123

    Wait Until Element Is Visible    accessibility_id=REMOVE_RULE-TESTE123    40s
    Click Element    accessibility_id=REMOVE_RULE-TESTE123

    Wait Until Element Is Visible    id=android:id/button1    40s
    Click Element    id=android:id/button1

    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=Navigate up    5s
    Run Keyword And Ignore Error    Click Element    accessibility_id=Navigate up

    Run Keyword And Ignore Error    Wait Until Element Is Visible    accessibility_id=Navegar para cima    5s
    Run Keyword And Ignore Error    Click Element    accessibility_id=Navegar para cima

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/intelbrasLogo    40s

    Close app
    

    

    



    
    


    

	

    