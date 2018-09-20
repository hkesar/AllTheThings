require 'rubygems'
require 'watir'

browser = Watir::Browser.new :chrome
browser.goto 'http://naboo-a.dev.lgscout.com'
#browser.form(id: 'login-form').wait_until_present
#browser.div(class: 'logo-container').wait_until_present
#browser.div(class: 'input-container').wait_until_present
#browser.text_field(id: 'username').wait_until_present
#sleep 10
#browser.text_field(:id => 'username').set 'hkesar'
#browser.text_field(id: 'password').wait_until_present
#divlogo = browser.div class: 'logo-container'()
#divlogo.exists?
#browser.text_field(id: 'username').wait_until_present
#sleep 3
#browser.text_field(:id => 'password').set 'hkesar'
#sleep 3
#browser.button(:id => 'login-button').click
#sleep 10
#divc = browser.div class: 'toggle-container'
#divc.exists?
#browser.quit
