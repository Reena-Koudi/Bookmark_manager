feature 'Delete a link' do
  scenario 'A user can delete a link' do
    visit('/')
    within '#link-1' do
      click_button 'Delete'
    end
    
    expect(page).not_to have_content "Makers Academy"
  end
end
