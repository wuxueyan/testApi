*** Settings ***
Library           RequestsLibrary
Library           String

*** Test Cases ***
testGet
    create session    github    https://api.github.com
    ${resp}    get request    github    /users/bulkan
    should be equal as strings    ${resp.status_code}    200
