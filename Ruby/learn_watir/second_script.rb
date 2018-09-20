require 'rubygems'
require 'watir'
require_relative 'adoption_helper'

include AdoptionHelper

goto_the_puppy_adoption_site
adopt_puppy_number(1)
continue_adopting_puppy
adopt_puppy_number(2)
continue_adopting_puppy
adopt_puppy_number(3)
continue_adopting_puppy
adopt_puppy_number(4)
checkout_with('Cheezy', '123 Main Street', 'cheezy@foo.com', 'Check')
verify_page_contains 'Thank you for adopting a puppy!'
close_the_browser