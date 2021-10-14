feature 'add bookmark' do 
  scenario 'add site, address and title via form' do
    visit ("/add")
    fill_in("url", with: "http://www.facebook.com")
    fill_in("title", with: "Facebook")
    click_button "Submit"
    expect(page).to have_content "http://www.facebook.com"
  end
end