require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it('processes the user entry and checks if it is an anagram') do
    visit('/')
    fill_in('word1', :with => 'ruby')
    fill_in('word2', :with => 'bury')
    click_button('Go!')
    expect(page).to have_content('These words are anagrams but the first word is not a palindrome')
  end
end
