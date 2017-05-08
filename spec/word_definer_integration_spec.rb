require('capybara/rspec')
require('./app.rb')
require('pry')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new word', {:type => :feature}) do
  it('allows a user to navigate to the "add word page"') do
    visit('/')
    click_link('Add Word')
    expect(page).to have_content('Word List')
  end
end
