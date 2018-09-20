Given("I am on the puppy adoption site") do
  @browser.goto "http://puppies.herokuapp.com"
end

When("I click the View Details button") do
  @browser.button(value: "View Details").click
end

When("I click the first View Details button") do
  @browser.div(:class => 'puppy_list', :index => 1).button(value: "View Details").click
end

When("I click the second View Details button") do
  @browser.div(:class => 'puppy_list', :index => 2).button(value: "View Details").click
end

And("I click the Adopt Me button") do
  @browser.button(value: "Adopt Me!").click
  @cart = ShoppingCartPage.new(@browser) # added becz pge 68
end

And("I click the Complete the Adoption button") do
  #@browser.button(value: "Complete the Adoption").click -- page 71
  @cart.proceed_to_checkout
end

And("I enter {string} in the name field") do |name|
  @browser.text_field(id: "order_name").set(name)
end

And("I enter {string} in the address field") do |address|
  @browser.textarea(id: "order_address").set(address)
end

And("I enter {string} in the email field") do |email|
  @browser.text_field(id: "order_email").set(email)
end

And("I select {string} from the pay with dropdown") do |pay_type|
  @browser.select_list(id: "order_pay_type").select(pay_type)
end

And("I click the Place Order button") do
  @browser.button(value: "Place Order").click
end

And("I click the Adopt Another Puppy button") do
  # @browser.button(value: "Adopt Another Puppy").click -- page 71
  @cart.continue_shopping
end

#def row_for(line_item) -- page 68 for line 49 - 55
#  (line_item - 1) * 6
#end

#def cart_line_item(line_item)
#  @browser.table(index:0)[row_for(line_item)]
#end

Then("I should see {string} as the name for line item {int}") do |name, line_item|
  #row = row_for(line_item.to_i) -- page 63
  #expect(cart_line_item(line_item.to_i)[1].text).to include name -- page 67
  expect(@cart.name_for_line_item(line_item.to_i)).to include name
end

And("I should see {string} as the subtotal for line item {int}") do |subtotal, line_item|
  #row = row_for(line_item.to_i) -- page 63
  #expect(cart_line_item(line_item.to_i)[3].text).to eql subtotal -- page 67
  expect(@cart.subtotal_for_line_item(line_item.to_i)).to eql subtotal
end

And("I should see {string} as the cart total") do |total|
  # expect(@browser.td(class: 'total_cell').text).to eql total -- page 67
  expect(@cart.cart_total).to eql total
end