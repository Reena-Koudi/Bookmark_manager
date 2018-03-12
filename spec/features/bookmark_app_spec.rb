require './bookmark_app.rb'

feature 'Manage my Bookmark' do
  scenario 'Show the list of links' do
    visit('/')
    expect(page).to have_content 'My Bookmarked Links'
  end
end
