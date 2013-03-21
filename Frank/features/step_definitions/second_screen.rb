When /^I use the keyboard to fill in the textfield marked "([^\\"]*)" with "([^\\"]*)"$/ do |text_field_mark, text_to_type|
    text_field_selector =  "view marked:'#{text_field_mark}'"
    check_element_exists( text_field_selector )
    touch( text_field_selector )
    frankly_map( text_field_selector, 'setText:', text_to_type )
    frankly_map( text_field_selector, 'endEditing:', true )
end
