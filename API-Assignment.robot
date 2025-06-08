*** Settings ***
Library               RequestsLibrary
Library               JSONLibrary

*** Test Cases ***
Test 1  
    ${response}=        GET    https://reqres.in/api/users    params=page=2
    Should Be Equal As Strings    2      ${response.json()}[total_pages]
Test 2
    ${response}=    GET  https://reqres.in/api/users   params=page=2      expected_status=200    

 