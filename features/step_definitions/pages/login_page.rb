$username_field = 'user-name'
$password_field = 'password'
$login_btn = 'login-button'
$fail_login_text = 'error-message-container error'

def input_username_field
    $browser.find_element(:name,$username_field).send_keys('standard_user')
    screenshot("input_username_field")
end

def invalid_username_field
    $browser.find_element(:name,$username_field).send_keys('standard_user1')
    screenshot("invalid_username_field")
end

def empty_username_field
    $browser.find_element(:name,$username_field).send_keys('')
    screenshot("empty_username_field")
end

def input_password_field
    $browser.find_element(:id,$password_field).send_keys('secret_sauce')
    screenshot("input_password_field")
end

def invalid_password_field
    $browser.find_element(:id,$password_field).send_keys('secret_sauce1')
    # expect($browser.find_element(:id,$password_field).text).to eql('secret_sauce1')
    screenshot("invalid_password_field")
end

def empty_password_field
    $browser.find_element(:id,$password_field).send_keys('')
    # expect($browser.find_element(:id,$password_field).text).to eql('')
    screenshot("empty_password_field")
end

def click_login_btn()
    screenshot("login")
    # expect($browser.find_element(:id,$login_btn).id).to eql('login')
    $browser.find_element(:id,$login_btn).click
    screenshot("success_login")
end

def fail_login()
    $browser.find_element(:class,$fail_login_text)
    screenshot("fail_login")
end