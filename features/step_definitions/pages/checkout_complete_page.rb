$title = '//span[contains(text(),"Checkout: Complete!")]'
$back_to_home_btn = 'back-to-products'

def direct_to_checkout_complete
    $browser.find_element(:xpath,$title)
    expect($browser.find_element(:xpath,$title).text).to eql('Checkout: Complete!')
end

def click_back_to_home_btn
    expect($browser.find_element(:id,$back_to_home_btn).text).to eql('Back Home')
    screenshot("checkout_complete")
    $browser.find_element(:id,$back_to_home_btn).click
end