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
Login successfully
    [Tags]        login

    Open app signup

    Login sucessed
    
    Logo dashboard view

    Close app

Add association rule
    [Tags]        add-rule

    Open app

    Button add

    Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@content-desc="BUTTON-Regra de associação"]    40s
    Click Element    xpath=//android.view.ViewGroup[@content-desc="BUTTON-Regra de associação"]

    Wait Until Element Is Visible    xpath=//android.widget.EditText[@resource-id="br.com.intelbras.guardian:id/nameEditText"]    40s
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.intelbras.guardian:id/nameEditText"]    teste123

    Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@content-desc="CARD-Origem"]    40s
    Click Element    xpath=//android.view.ViewGroup[@content-desc="CARD-Origem"]

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="br.com.intelbras.guardian:id/dialogDescription"]    40s
    
    Wait Until Element Is Visible    xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="br.com.intelbras.guardian:id/recyclerView"]/android.widget.LinearLayout    40s
    Click Element    xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="br.com.intelbras.guardian:id/recyclerView"]/android.widget.LinearLayout

    Wait Until Element Is Visible    xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="br.com.intelbras.guardian:id/sectorsRecyclerView"]/android.view.ViewGroup[1]    40s
    Click Element    xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="br.com.intelbras.guardian:id/sectorsRecyclerView"]/android.view.ViewGroup[1]


    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/save"]    40s
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/save"]


    Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@content-desc="CARD-Ação"]    40s
    Click Element    xpath=//android.view.ViewGroup[@content-desc="CARD-Ação"]

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="br.com.intelbras.guardian:id/dialogDescription"]    40s

    Wait Until Element Is Visible    xpath=(//android.view.ViewGroup[@resource-id="br.com.intelbras.guardian:id/addChannelCardHeader"])[1]    40s
    Click Element    xpath=(//android.view.ViewGroup[@resource-id="br.com.intelbras.guardian:id/addChannelCardHeader"])[1]

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="br.com.intelbras.guardian:id/channelNameChip"]    40s
    Click Element    xpath=//android.widget.TextView[@resource-id="br.com.intelbras.guardian:id/channelNameChip"]

    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/save"]    40s
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/save"]

    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/save"]    40s
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.intelbras.guardian:id/save"]

    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="android:id/button1"]    40s
    Click Element    xpath=//android.widget.Button[@resource-id="android:id/button1"]

    Logo dashboard view

    Close app




    	



    

    

    

    



    
    


    

	

    