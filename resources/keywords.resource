*** Keywords ***
Open app
    Open Application    http://localhost:4723    
    ...    platformName=${PLATFORM_NAME}    
    ...    deviceName=${DEVICE_NAME}    
    ...    app=${APP}    
    ...    automationName=${AUTOMATION_NAME}

Close app
    Close Application