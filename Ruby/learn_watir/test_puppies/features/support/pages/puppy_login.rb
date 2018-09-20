class PuppyLoginPage

  include PageObject
  include DataMagic

  page_url "http://puppies.herokuapp.com/login"

  text_field(:name,:id => "name")
  text_field(:password,:id => "password")
  button(:login, :value => "Login")

  def login_with (data = {})
    populate_page_with data_for(:login_page, data)
    login
  end

  end