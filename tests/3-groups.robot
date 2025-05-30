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
${DEVICE_NAME}          4d73cef8        #    Device do celular
${APP}                  C:/Users/uriarte/QAmobile/base.apk        #    Diretorio do app
${AUTOMATION_NAME}      UiAutomator2        #    Nome do Automation

*** Test Cases ***
Add group
    [Tags]    add-group

    Open app

    Button add

    Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@content-desc="BUTTON-Grupo"]    40s
    Click Element    xpath=//android.view.ViewGroup[@content-desc="BUTTON-Grupo"]

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="br.com.intelbras.guardian:id/groupTip"]    40s

    Wait Until Element Is Visible    xpath=//android.widget.EditText[@resource-id="br.com.intelbras.guardian:id/nameEditText"]    40s
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.intelbras.guardian:id/nameEditText"]    teste123

    Wait Until Element Is Visible    xpath=//android.widget.EditText[@resource-id="br.com.intelbras.guardian:id/colorEditText"]    40s
    Click Element    xpath=//android.widget.EditText[@resource-id="br.com.intelbras.guardian:id/colorEditText"]

    Wait Until Element Is Visible    xpath=//android.widget.RelativeLayout[@content-desc="COLOR-PURPLE"]    40s
    Click Element    xpath=//android.widget.RelativeLayout[@content-desc="COLOR-PURPLE"]

    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/nextButton"]    40s
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/nextButton"]

    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="br.com.intelbras.guardian:id/clickableArea"]    40s
    Click Element    xpath=//android.view.View[@resource-id="br.com.intelbras.guardian:id/clickableArea"]

    Wait Until Element Is Visible    xpath=(//android.view.View[@resource-id="br.com.intelbras.guardian:id/clickableArea"])[2]    40s
    Click Element    xpath=(//android.view.View[@resource-id="br.com.intelbras.guardian:id/clickableArea"])[2]

    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/nextButton"]    40s
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/nextButton"]

    Logo dashboard view

    Close app