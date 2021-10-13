feature 'add bookmark' do 
  scenario 'add site, address and title via form' do
    visit ("/add")
    fill_in("new_bookmark", with: "http://www.facebook.com")
    click_button "Submit"
    expect(page).to have_content "http://www.facebook.com"
  end
end