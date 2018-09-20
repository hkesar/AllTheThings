require 'rubygems'
require 'watir'
require 'open-uri'

#include DataMagic

module CoreHelper

  def goto_worksheet_site
    @browser = Watir::Browser.new :chrome
    @browser.goto 'http://www.commoncoresheets.com/SortedByGrade.php'
    @browser.window.maximize
    #stop_browser
  end

 # def core_picker(core)
    def core_picker(grade)
    #code.select_list(:name => "Sorted").select(core)
    $i=0
    @code = @browser.table(:class => "customholder").tbody(:index => 1).tr.td(:index => grade)
    @core
   until $i > @code.select_list(:name => "Sorted").options.length do
      @code = @browser.table(:class => "customholder").tbody(:index => 1).tr.td(:index => grade)
      @code.select_list(:name => "Sorted").option(:index => $i).select
      @core = @code.select_list(:name => "Sorted").option(:index => $i).value
      @code.button(:value => "Go").click
      $i+=1
      worksheet_picker(grade)
      @browser.back
   end
      end


  def stop_browser
    @browser.send_keys :escape
  end

  def worksheet_picker (grade)
    stop_browser
    @browser.execute_script("window.scrollBy(0,500)")
    @worksheet_table = @browser.element.div(:class => "WorksheetBox").table

    (1..@worksheet_table.rows.length - 1).each  do |r|
      if @worksheet_table.tr(:index => r).div(:class => "sub").text == 'Select a Worksheet »'
        @worksheet_table.tr(:index => r).div(:class => "sub").element.wd.location_once_scrolled_into_view
        @worksheet_table.tr(:index => r).div(:class => "sub").hover
        @worksheet_table.tr(:index => r).div(:class => "sub").ul.li(:text => "Grab 'em All").click
        #File.open("/Users/hkesar/Dropbox/Docs/Alisha/Alisha_Work/Math/Grade 2/grade-#{grade}-#{$i}-#{r}.pdf", 'w') {|f| f.write @browser.html }
        File.open("/Users/hkesar/Dropbox/Docs/Alisha/Alisha_Work/Math/commoncore/#{@core}-#{r}", 'w') {|f| f.write @browser.html }
        #File.open("/Users/hkesar/Dropbox/Docs/Alisha/Alisha_Work/Math/commoncore/grade-#{grade}-#{$i}-#{r}", 'w') {|f| f.write @browser.html }
        @browser.back
      end
      #@browser.back
      end
  end

  def browser_close
    @browser.close

  end

 # def print_worksheet(file_name)
  #sleep 10
  #  puts file_name
  #File.open("/Users/hkesar/Dropbox/Docs/Himanshu/Ruby/#{file_name}", 'w') {|f| f.write @browser.html }
  #@browser.element.send_keys [:command, 'p']
 # end

end