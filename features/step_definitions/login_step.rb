require_relative '../support/screen_action.rb'

Given 'User open saucedemo' do
    maximize_browser()
    open_url("https://www.saucedemo.com/")
    sleep(2)
end

When 'User try to login with {string}' do |login_data|
    case login_data
    when 'valid'
      input_username_field
      input_password_field
      click_login_btn
    when 'invalid_username'
      invalid_username_field
      input_password_field
      click_login_btn
    when 'invalid_password'
        input_username_field
        invalid_password_field
        click_login_btn
    when 'empty_username'
        empty_username_field
        input_password_field
        click_login_btn
    when 'empty_password'
        input_username_field
        empty_password_field
        click_login_btn
    end
end

Then 'verify User {string} to login' do |status|
    case status
    when 'success'
      success_login
      sleep(2)
    when 'error'
      fail_login
      sleep(2)
    end
end