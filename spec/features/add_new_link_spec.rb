require 'uri'

feature 'Adding new link' do
  scenario 'A user adds new link to Bookmark Manager' do
    visit('/add-a-new-link')
    fill_in('url', with: 'http://testlink.com')
    click_button('Submit')
    expect(page).to have_content 'http://testlink.com'
  end

  scenario 'A link must be a valid URL' do
    visit('/add-a-new-link')
    fill_in('url', with: 'Invalid link')
    click_button('Submit')
    expect(page).not_to have_content "Invalid link"
    expect(page).to have_content "You must submit a valid URL."
  end
end
