require 'calabash-android/calabash_steps'

Given /^the user is on the launch page of the app$/ do
   wait_for(:timeout =>100) { element_exists("* id:'skip_button';")}   
   tap_when_element_exists("* id:'skip_button';")
end


When(/^the user clicks on the join us tab$/) do
  tap_when_element_exists("* id:'skip_button';")
  tap_when_element_exists("* id:'join_sign_in_button';")
end

When(/^again clicks on join us tab$/) do
   tap_when_element_exists("* id:'join_button';")
end

Then(/^user enters First name$/) do
 tap_when_element_exists("* id:'join_first_name';")
  enter_text("android.widget.EditText id:'#{'join_first_name'}'", "text")
end

Then(/^user enters Last name$/) do
enter_text("android.widget.EditText id:'#{'join_last_name'}'", "last")
end

Then(/^user enters email address$/) do
 enter_text("android.widget.EditText id:'#{'join_email_address'}'", "test@test.com") 
end

Then(/^user enters password$/) do
  tap_when_element_exists("* id:'join_password';")
  enter_text("android.widget.EditText id:'#{'join_password'}'", "Text1464")
   scroll_down
end

Then(/^user clicks on join us tab$/) do
 wait_for(:timeout =>100) { element_exists("* id:'join_join_button';")}
  tap_when_element_exists("* id:'join_join_button';")
end