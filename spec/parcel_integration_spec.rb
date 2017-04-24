require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('display parcel results', {:type =>:feature})do
  it('send info to the results page')do
    visit('/')
    fill_in('length', :with => '1')
    fill_in('width', :with => '2')
    fill_in('height', :with => '3')
    fill_in('weight', :with => '0')
    click_button('Calculate!')
    expect(page).to have_content(15)
  end
end
