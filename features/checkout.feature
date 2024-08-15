@Checkout
Feature: Checkout

Scenario Outline:  User should to try to checkout in saucedemo
Given User open saucedemo
When User try to login with "valid"
Then verify User "success" to login
When User sort "<type_sort>" item 
And User add items to cart
And User check cart
And User continue shop
And User remove items from cart
And User checkout
And User try to input information with "<info_data>"
Then verify User "<status>" to input information
Examples:
| type_sort         | info_data                                | status  |
| name_a_to_z       | input_checkout_step_one_field            | success |
| name_z_to_a       | empty_checkout_step_one_field            | failed  |
| price_low_to_high | empty_firstname_checkout_step_one_field  | failed  |
| price_high_to_low | empty_lastname_checkout_step_one_field   | failed  |
| name_a_to_z       | empty_postalcode_checkout_step_one_field | failed  |

Scenario:  User should be able to checkout in saucedemo
Given User open saucedemo
When User try to login with "valid"
Then verify User "success" to login
When User sort "price_low_to_high" item 
And User add items to cart
And User check cart
And User continue shop
And User remove items from cart
And User checkout
And User try to input information with "input_checkout_step_one_field"
Then verify User "success" to input information