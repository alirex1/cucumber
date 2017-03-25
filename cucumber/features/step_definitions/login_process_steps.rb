Given(/^I am on the google site$/) do
  visit HomePage
end

When(/^I click on the "([^"]*)" button$/) do |link|
  @browser.link(:text, link).click
end

Then(/^The page title should "([^"]*)"$/) do |title|
  @browser.title.eql?(title) == true
end

And(/^I click on "([^"]*)" button$/) do |id|
  @browser.input(:id, id).click
end

Then(/^I should see error message "([^"]*)"$/) do |error_message|
  @browser.span.eql?(error_message) == true
end

Then(/^The button page change into "([^"]*)"$/) do |value|
  @browser.input.equal?(value) == true
end

And(/^I fill in "([^"]*)" with "([^"]*)"$/) do |id, text|
  @browser.text_field(:id => id).set(text)
end

And(/^I click on "([^"]*)"$/) do |value|
  @browser.input(:value, value).click
end

Then(/^I should see home page with "([^"]*)" on the top right$/) do |text|
  @browser.link(:title, text) == true
end

And(/^I click link "([^"]*)" on top right$/) do |text|
  @browser.link(:title, text).click
end

Then(/^I should see "([^"]*)" Page$/) do |text|
  @browser.link(:title, text) == true
end

Then(/^I should see "([^"]*)" in inbox$/) do |text|
  @browser.span(:text, 'No messages matched your search. Try using ') == true
end

Then(/^I should see message "([^"]*)"$/) do |text|
  @browser.span(:name, text) == true
end

And(/^I click "([^"]*)"$/) do |text|
  @browser.button(:id, 'gbqfb').click
end

And(/^I fill in search with "([^"]*)"$/) do |text|
  @browser.text_field(:id => 'gbqfq').set(text)
end

And(/^I click on top right button$/) do
  @browser.link(:class,'gb_b gb_eb gb_R').click
end

Then(/^I should see "([^"]*)" button$/) do |link|
  @browser.link(:text, link)
end

And(/^I click "([^"]*)" button$/) do |text|
  @browser.link(:text, text).click
end