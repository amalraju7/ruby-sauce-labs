$title = '//span[contains(text(),"Your Cart")]'
$continue_shopping_btn = 'continue-shopping'
$remove_backpack_btn = 'remove-sauce-labs-backpack'
$checkout_btn = 'checkout'

def direct_to_cart
    $browser.find_element(:xpath,$title)
    expect($browser.find_element(:xpath,$title).text).to eql('Your Cart')
end

def click_continue_shopping_btn
    expect($browser.find_element(:id,$continue_shopping_btn).text).to eql('Continue Shopping')
    $browser.find_element(:id,$continue_shopping_btn).click
end

def click_remove_backpack_btn
    expect($browser.find_element(:id,$remove_backpack_btn).text).to eql('Remove')
    $browser.find_element(:id,$remove_backpack_btn).click
end

def click_checkout_btn
    screenshot('cart_page')
    expect($browser.find_element(:id,$checkout_btn).text).to eql('Checkout')
    $browser.find_element(:id,$checkout_btn).click
end