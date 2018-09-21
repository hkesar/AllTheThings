require 'rubygems'
require 'watir'
require_relative 'core_helper'

include CoreHelper

goto_worksheet_site
stop_browser
# put the grade here
core_picker(3)