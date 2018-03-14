require 'uri'

feature 'Adding new link' do
  scenario 'A user adds new link to Bookmark Manager' do
    visit('/add-a-new-link')
    fill_in('url', with: 'http://testlink.com')
    click_button('Submit')
    expect(page).to have_content 'http://testlink.com'
  end
end
