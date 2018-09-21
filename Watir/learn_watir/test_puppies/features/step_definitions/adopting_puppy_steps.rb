Given(/^I am on puppy adoption site$/) do
  visit(HomePage)
  # @browser = Watir::Browser.new :chrome
  #@browser.goto 'http://puppies.herokuapp.com'
  #@home = HomePage.new(@browser)
end

When(/^I click the first View Details button$/) do
  on(HomePage).select_puppy_number 1
  #@browser.button(:value => 'View Details', :index => 0).click
  #@home.puppy_number 1
  #@details=PuppyDetails.new(@browser)
end

And(/^I click the second View Details button$/) do
  on(HomePage).select_puppy_number 2
  #@home.puppy_number 2
  #@browser.button(:value => 'View Details', :index => 1).click
  #@details=PuppyDetails.new(@browser)
end

And(/^I click the Adopt Me button$/) do
  on(DetailsPage).add_to_cart
  #@browser.button(:value => 'Adopt Me!').click
  #@details.adopt_puppy
  #@cart = ShoppingCartPage.new(@browser)
 end

And(/^I click Adopt Another Puppy button$/) do
  on(ShoppingCartPage).continue_shopping
  #@cart.continue_shopping
end

And(/^I click the Complete the Adoption button$/) do
  on(ShoppingCartPage).proceed_to_checkout
  #@browser.button(:value => 'Complete the Adoption').click
  #@cart.proceed_to_checkout
  #@checkout = CheckoutPage.new(@browser)
end

And(/^I enter (.+) in the name field$/) do |name|
  on(CheckoutPage).name = name
  #@browser.text_field(:id => 'order_name').set(name)
  #@checkout.name = name
end

And(/^I enter (.+) in the address field$/) do |address|
  on(CheckoutPage).address = address
  #@browser.textarea(:id => 'order_address').set(address)
  #@checkout.address = address
end

And(/^I enter (.+) in the email field$/) do |email|
  on(CheckoutPage).email = email
  #@browser.text_field(:id => 'order_email').set(email)
  #@checkout.email = email
end

And(/^I select (.+) from the pay with dropdown$/) do |pay_type|
  on(CheckoutPage).pay_type = pay_type
  #@browser.select_list(:id => 'order_pay_type').select (pay_type)
  #@checkout.pay_type = pay_type
end

And(/^I click the Place Order button$/) do
  on(CheckoutPage).place_order
  #@browser.button(:value => 'Place Order').click
  #@checkout.place_order
end

And(/^I complete the adoption with$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  on(CheckoutPage).checkout(table.hashes.first) # Write code here that turns the phrase above into concrete actions
end

And(/^I click the View Details button for "(.+)"$/) do |name|
  on(HomePage).select_puppy name
end

And(/^I complete the adoption of a puppy$/) do
  on(HomePage).select_puppy
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout

  # Write code here that turns the phrase above into concrete actions
end

When(/^I checkout leaving name field blank$/) do
  on(HomePage).select_puppy
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout
  on(CheckoutPage).checkout(:name => '')
end


Then(/^I should see the error message "([^"]*)"$/) do |msg|
  #expect(@browser.text).to include expected
  expect(on(CheckoutPage).error_messages).to include msg

end

#def row_for (line_item)
#  (line_item - 1) * 6
#end

#def cart_line_item (line_item)
#  @browser.table(:index => 0)[row_for(line_item)]
#end

Then(/^I should see (.+) as the name for line item (\d+)$/) do |name, line_item|
  #expect(cart_line_item(line_item.to_i)[1].text).to include name
  #expect(@cart.name_for_line_item(line_item.to_i)).to include name
  expect(on(ShoppingCartPage).name_for_line_item(line_item)).to include name

end

Then(/^I should see (.+) as the subtotal for line item (\d+)$/) do |subtotal, line_item|
  #expect(cart_line_item(line_item.to_i)[3].text).to eql subtotal
  #expect(@cart.subtotal_for_line_item(line_item.to_i)).to eql subtotal
  expect(on(ShoppingCartPage).subtotal_for_line_item(line_item)).to eql subtotal
end

And(/^I should see (.+) as the cart total$/) do |total|
  #expect(@browser.td(:class => "total_cell").text).to eql total
  #expect(@cart.cart_total).to eql total
  expect(on(ShoppingCartPage).cart_total).to eql total
end

And(/^I complete the adoption$/) do
  on(CheckoutPage).checkout # Write code here that turns the phrase above into concrete actions
end

And(/^I complete the adoption using a Credit card$/) do
  on(CheckoutPage).checkout('pay_type' => 'Credit card') # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click button "([^"]*)"$/) do |arg1|
  visit(PuppyLoginPage)
  on(PuppyLoginPage).login_with
  on(LandingPage).adoptions
  #on adoption page click first process puppy
end

Then(/^I should be able to see a "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
  # check the thank you message with adopter name
end