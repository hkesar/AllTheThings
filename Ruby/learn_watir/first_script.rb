require 'watir'
require_relative 'adoption_helper'

include AdoptionHelper

goto_the_puppy_adoption_site
adopt_puppy_number(1)
checkout_with('Cheezy', '123 Main Street', 'cheezy@foo.com', 'Check')
verify_page_contains 'Thank you for adopting  puppy!'
close_the_browser


#browser  = Watir::Browser.new :chrome
#browser.goto 'http://puppies.herokuapp.com'
#browser.form(:action => "/puppies/4").button(:value => "View Details").click
#browser.form(:action => "/adoptions?puppy_id=4").button(:value => "Adopt Me!").click
#browser.div(:class => "cart_buttons").form(:action => "/orders/new").button(:value => "Complete the Adoption").click
#browser.text_field(:id => "order_name").set("John Smith")
#browser.textarea(:id=> "order_address").set("1234", :return, "Street", :return, "City", :return, "State", :return, "zipcode")
#browser.text_field(:id => "order_email").set("abc@abc.com")
#browser.select_list(:id => "order_pay_type").select("Check")
#browser.button(:value => "Place Order").click
#sleep 10
#fail unless browser.text.include? 'Thank you for adopting a puppy!'
#browser.close
