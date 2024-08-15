$title_checkout_step_one = '//span[contains(text(),"Checkout: Your Information")]'
$firstname_field = 'first-name'
$lastname_field = 'last-name'
$postalcode_field = 'postal-code'
$continue_btn = 'continue'
$fail_checkout_step_one_text = 'error-message-container error'

def direct_to_checkout_step_one
    $browser.find_element(:xpath,$title_checkout_step_one)
    expect($browser.find_element(:xpath,$title_checkout_step_one).text).to eql('Checkout: Your Information')
end

def input_checkout_step_one_field
    maximize_browser()
    $browser.find_element(:id,$firstname_field).send_keys('bela')
    $browser.find_element(:id,$lastname_field).send_keys('putri')
    $browser.find_element(:id,$postalcode_field).send_keys('1234')
    screenshot("checkout_valid_step_one")
end

def click_continue_btn
    sleep 3
    $browser.execute_script "window.scrollBy(200,400)"
    continue = $browser.find_element(:id,$continue_btn)
    $browser.execute_script 'arguments[0].scrollIntoView();',continue
    sleep 3
    screenshot("checkout_scroll_step_one")
    $browser.find_element(:id,$continue_btn).click
end

def empty_checkout_step_one_field
    $browser.find_element(:id,$firstname_field).send_keys('')
    $browser.find_element(:id,$lastname_field).send_keys('')
    $browser.find_element(:id,$postalcode_field).send_keys('')
    screenshot("checkout_empty_step_one")
end

def empty_firstname_checkout_step_one_field
    $browser.find_element(:id,$firstname_field).send_keys('')
    $browser.find_element(:id,$lastname_field).send_keys('putri')
    $browser.find_element(:id,$postalcode_field).send_keys('1234')
    screenshot("checkout_empty_first_name_step_one")
end

def empty_lastname_checkout_step_one_field
    $browser.find_element(:id,$firstname_field).send_keys('bela')
    $browser.find_element(:id,$lastname_field).send_keys('')
    $browser.find_element(:id,$postalcode_field).send_keys('1234')
    screenshot("checkout_empty_last_name_step_one")
end

def empty_postalcode_checkout_step_one_field
    $browser.find_element(:id,$firstname_field).send_keys('bela')
    $browser.find_element(:id,$lastname_field).send_keys('putri')
    $browser.find_element(:id,$postalcode_field).send_keys('')
    screenshot("checkout_empty_postal_code_step_one")
end

def error_checkout_step_one
    $browser.find_element(:class,$fail_checkout_step_one_text)
    screenshot("checkout_error_step_one")
end