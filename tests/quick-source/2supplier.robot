*** Settings ***
Documentation    Supplier submit response
Library    SeleniumLibrary
Resource    ../../resources/keywords.resource
Resource    ../../resources/variables.resource

*** Test Cases ***
Valid Login
    Open Browser    https://dewdrops-staging.zycus.com/zsp/guest    Chrome
    Set Screenshot Directory    ${QUICK_SOURCE_SCREENSHOT_PATH} 
    Wait Browser Load    
    # * Add credentials
    Input Text    //*[@id="app-root-container"]/div/div/div/div[1]/zsp-guest/dew-row[1]/dew-col[1]/zsp-login/div/div[3]/div/div/form/div[1]/dew-input-container/div[2]/input    appsupport.zycustest297@sminvestments.com
    Input Password    //*[@id="app-root-container"]/div/div/div/div[1]/zsp-guest/dew-row[1]/dew-col[1]/zsp-login/div/div[3]/div/div/form/div[2]/dew-input-container/div[2]/input    Acc297@Sm123!
    Click Element    //*[@id="app-root-container"]/div/div/div/div[1]/zsp-guest/dew-row[1]/dew-col[1]/zsp-login/div/div[3]/div/div/div[2]
    Wait Browser Load

Click Event
    Sleep    5
    Click Link    //*[@id="cdk-drop-list-1"]/div[1]/dew-dashboard-card-body/zsp-add-cards/dew-card/dew-card-body/dew-row[1]/dew-col/div/a
    Sleep    5
    Switch Window    title=Automated Quick Source9 - iSource Portal
    Wait Browser Load
    Sleep    5

Fill Out Event
    Wait Until Element Is Visible    //*[@id="response-container"]/dew-page-wrapper/div/div/dew-page-content/form/dew-card/dew-card-body/isource-qs-supplier-respose/div[1]/table/tbody/tr[1]/td[4]/dew-input-container/input
    Input Text    //*[@id="response-container"]/dew-page-wrapper/div/div/dew-page-content/form/dew-card/dew-card-body/isource-qs-supplier-respose/div[1]/table/tbody/tr[1]/td[4]/dew-input-container/input    1
    Sleep    5
    Input Text    //*[@id="response-container"]/dew-page-wrapper/div/div/dew-page-content/form/dew-card/dew-card-body/isource-qs-supplier-respose/div[1]/table/tbody/tr[1]/td[5]/dew-input-container/input    50
    Sleep    5
    Input Text    //*[@id="response-container"]/dew-page-wrapper/div/div/dew-page-content/form/dew-card/dew-card-body/isource-qs-supplier-question/div/div/div/div/section/dew-input-container/dew-input2/textarea    good
    Sleep    5
    Click Element    //*[@id="app-root-container"]/div/div/div/div[2]/div/isource-quicksource-prepareresponse/dew-footer-actions/footer/div/div/div[2]/dew-btn[2]
    Sleep    3
    [Teardown]    Close Browser

