require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

web_page = WebPage.new 

Given("I acess |site|https:\/\/amazon.com.br|") do
    web_page.load
  end

  When("i search for {string}") do |search|
    web_page.search_field.set search
    web_page.search_button.click()
  end
  
  Then("i'll find my book {string}") do |name|
    expect(page).to have_content name
  end