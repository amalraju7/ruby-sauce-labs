When 'User sort {string} item' do |type_sort|
    click_product_sort_btn 
    case type_sort
    when 'name_a_to_z'
        click_sort_asc_name_btn
    when 'name_z_to_a'
        click_sort_desc_name_btn
    when 'price_low_to_high'
        click_sort_asc_price_btn
    when 'price_high_to_low'
        click_sort_desc_price_btn
    end
end

And 'User add items to cart' do 
    click_add_to_cart_backpack_btn
    click_add_to_cart_tshirt_btn
end

And 'User check cart' do
    click_shopping_cart_btn
end

And 'User continue shop' do
    click_continue_shopping_btn
end

And 'User remove items from cart' do
    click_remove_backpack_btn
end

And 'User checkout' do
    click_shopping_cart_btn
    click_checkout_btn
end

And 'User try to input information with {string}' do |info_data|
    direct_to_checkout_step_one
    case info_data
    when 'input_checkout_step_one_field'
        input_checkout_step_one_field
    when 'empty_checkout_step_one_field'
        empty_checkout_step_one_field
    when 'empty_firstname_checkout_step_one_field'
        empty_firstname_checkout_step_one_field
    when 'empty_lastname_checkout_step_one_field'
        empty_lastname_checkout_step_one_field
    when 'empty_postalcode_checkout_step_one_field'
        empty_postalcode_checkout_step_one_field
    end
    click_continue_btn
end

Then 'verify User {string} to input information' do |status|
   case status
   when 'success'
    direct_to_checkout_step_two
    click_finish_btn
    click_back_to_home_btn
   when 'error'
    error_checkout_step_one
    $browser.quit
   end
end