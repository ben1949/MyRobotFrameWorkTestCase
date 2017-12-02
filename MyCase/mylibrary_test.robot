*** Settings ***
Documentation     Example test cases using the keyword-driven testing approach.
...
...               All tests contain a workflow constructed from keywords in
...               ``mylibtest.MyFirstLib``. Creating new tests or editing
...               existing is easy even for people without programming skills.
...
...               The _keyword-driven_ appoach works well for normal test
...               automation, but the _gherkin_ style might be even better
...               if also business people need to understand tests. If the
...               same workflow needs to repeated multiple times, it is best
...               to use to the _data-driven_ approach.
Library           mylibtest.MyFirstLib
Variables         myvar.py
Resource          mylibrary.robot
*** Variables ***
${a}=     2

*** Test Cases ***
Case1 Test MyLibrary
    ${c}    add    ${a}    ${b}
    log    ${c}
    
Case2 Test MyLibrary_with_keyword
    ${d}    MyLib Add On    ${a}    ${b}
    log    ${d}