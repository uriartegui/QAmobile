*** Settings ***
Library    AppiumLibrary

Resource   ../resources/keywords.resource
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

AK49P05 - Configurar configurações de imagem
    [Tags]        channel-config

    Open app

    Wait Until Element Is Visible    accessibility_id=POPUP_VIDEO-VIPW-1300-MINI-SD    40s
    Click Element    accessibility_id=POPUP_VIDEO-VIPW-1300-MINI-SD

    Wait Until Element Is Visible    accessibility_id=SETTINGS_VIDEO-VIPW-1300-MINI-SD    40s
    Click Element    accessibility_id=SETTINGS_VIDEO-VIPW-1300-MINI-SD

    Wait Until Element Is Visible    accessibility_id=BUTTON-Configurar canal    40s
    Click Element    accessibility_id=BUTTON-Configurar canal

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/layoutParams    40s
    Click Element    id=br.com.intelbras.guardian:id/layoutParams

    ${result}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    id=android:id/button1    60s
    Run Keyword If    '${result[0]}' == 'PASS'    Handle Layout Error
    
    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/channelName    40s
    Click Element    id=br.com.intelbras.guardian:id/channelName    

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/brightnessSlider    40s

    Swipe SeekBar By Id    br.com.intelbras.guardian:id/brightnessSlider    left

    Sleep    7s

    Swipe SeekBar By Id    br.com.intelbras.guardian:id/brightnessSlider    right

    Sleep    7s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/restoreDefaultButton    40s
    Click Element    id=br.com.intelbras.guardian:id/restoreDefaultButton

    Sleep    3s

    Swipe SeekBar By Id    br.com.intelbras.guardian:id/contrastSlider    left

    Sleep    7s

    Swipe SeekBar By Id    br.com.intelbras.guardian:id/contrastSlider    right

    Sleep    7s

    Wait Until Element Is Visible    id=br.com.intelbras.guardian:id/restoreDefaultButton    40s
    Click Element    id=br.com.intelbras.guardian:id/restoreDefaultButton

    Sleep    3s

    
