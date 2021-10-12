feature "bookmark" do
  scenario "returns a list of bookmarks" do
    visit "/bookmark"
    expect(page).to have_content "https://www.theodinproject.com"
    #  "https://www.udemy.com", "https://www.codecademy.com", "https://www.codewars.com/dashboard"]
  end
end
