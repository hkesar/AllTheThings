require_relative 'side_menu_panel'

class LandingPage

  include SideMenuPanel
  include PageObject

  page_url "http://puppies.herokuapp.com/admin"

end