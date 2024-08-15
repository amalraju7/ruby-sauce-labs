$title = '//span[contains(text(),"Products")]'
$add_to_cart_backpack_btn = 'add-to-cart-sauce-labs-backpack'
$add_to_cart_tshirt_btn = 'add-to-cart-test.allthethings()-t-shirt-(red)'
$shopping_cart_btn = 'shopping_cart_container'
$product_sort_btn = 'select_container'
$sort_asc_name_btn = '//option[contains(text(),"Name (A to Z)")]'
$sort_desc_name_btn = '//option[contains(text(),"Name (Z to A)")]'
$sort_asc_price_btn = '//option[contains(text(),"Price (low to high)")]'
$sort_desc_price_btn = '//option[contains(text(),"Price (high to low)")]'

def success_login()
    $browser.find_element(:xpath,$title)
    expect($browser.find_element(:xpath,$title).text).to eql('Products')
    screenshot("success_login")
end

def click_product_sort_btn
    $browser.find_element(:class,$product_sort_btn).click
end

def click_sort_asc_name_btn
    expect($browser.find_element(:xpath,$sort_asc_name_btn).text).to eql('Name (A to Z)')
    $browser.find_element(:xpath,$sort_asc_name_btn).click
    screenshot("sort_a_to_z")
end

def click_sort_desc_name_btn
    expect($browser.find_element(:xpath,$sort_desc_name_btn).text).to eql('Name (Z to A)')
    $browser.find_element(:xpath,$sort_desc_name_btn).click
    screenshot("sort_z_to_a")
end

def click_sort_asc_price_btn
    expect($browser.find_element(:xpath,$sort_asc_price_btn).text).to eql('Price (low to high)')
    $browser.find_element(:xpath,$sort_asc_price_btn).click
    screenshot("sort_low_to_high")
end

def click_sort_desc_price_btn
    expect($browser.find_element(:xpath,$sort_desc_price_btn).text).to eql('Price (high to low)')
    $browser.find_element(:xpath,$sort_desc_price_btn).click
    screenshot("sort_high_to_low")
end

def click_add_to_cart_backpack_btn
    expect($browser.find_element(:id,$add_to_cart_backpack_btn).text).to eql('Add to cart')
    $browser.find_element(:id,$add_to_cart_backpack_btn).click
end

def click_add_to_cart_tshirt_btn
    expect($browser.find_element(:id,$add_to_cart_tshirt_btn).text).to eql('Add to cart')
    $browser.find_element(:id,$add_to_cart_tshirt_btn).click
    screenshot("product")
end

def click_shopping_cart_btn
    $browser.find_element(:id,$shopping_cart_btn).click
end