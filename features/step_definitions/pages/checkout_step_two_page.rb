$title_checkout_step_two = '//span[contains(text(),"Checkout: Overview")]'
$finish_btn = '//button[@id="finish"]'

def direct_to_checkout_step_two
    expect($browser.find_element(:xpath,$title_checkout_step_two).text).to eql('Checkout: Overview')
    $browser.find_element(:xpath,$title_checkout_step_two)
end

def click_finish_btn
    expect($browser.find_element(:xpath,$finish_btn).text).to eql('Finish')
    screenshot("checkout_step_two")
    $browser.find_element(:xpath,$finish_btn).click
end