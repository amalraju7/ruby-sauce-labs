@Login
Feature: Login

Scenario Outline:  User try to login to saucedemo
Given User open saucedemo
When User try to login with "<login_data>"
Then verify User "<status>" to login
Examples:
| login_data       | status  |
| valid            | success |
| invalid_username | failed  |
| invalid_password | failed  |
| empty_username   | failed  |
| empty_password   | failed  |

Scenario:  User should be able to login to saucedemo
Given User open saucedemo
When User try to login with "valid"
Then verify User "success" to login