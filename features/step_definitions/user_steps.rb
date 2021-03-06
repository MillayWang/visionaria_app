Given /the following users exist/ do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  table.hashes.each do |user|
    User.create(user)
  end
end

Given /^I sign up as "([^"]*)" with "([^"]*)", email "([^"]*)", and name "([^"]*)"/ do |user, password, email, name|
  visit '/users/sign_up'
  fill_in "Username | Usuario", :with => user
  fill_in "Email | Correo electrónico", :with => email
  fill_in "Name | Nombre", :with => name
  fill_in "Password | Contraseña", :with => password
  fill_in "Password Confirmation | Confirmación de contraseña", :with => password
  click_button "Sign up | Regístrate"
  step %Q{I should see "#{user}"}
end

Given(/^I am signed in with username "([^"]*)", email "([^"]*)" and password "([^"]*)"$/) do |username, email, password|
  visit '/users/sign_in'
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  click_button "Login"
  step %Q{I should see "#{username}"}
end

Given(/^I log out of my account$/) do
  step %Q{I follow "Logout"}
end  

Given(/^pending$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should get a notification for a "([^"]*)" by "([^"]*)"$/) do |action, username|
  case action
  when "like"
    step %Q{I should see "#{username} liked your post!"}
  when "comment"
    step %Q{I should see "#{username} commented on your post!"}
  end
end

When(/^I click "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I view my profile$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click "([^"]*)" and submit a file$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

#Given /facebook login/  do
#  find(:css, 'a.facebook').click
#end

#Given /I should put in email "([^"]*)" and password "([^"]*)"/ do |user, password|
#  fill_in('email', with: user)
#  fill_in('pass', with: password)
#  click_button('Log In')
#end