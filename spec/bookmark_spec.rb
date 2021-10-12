require_relative "../lib/bookmark"
describe ".view" do
  it "returns a list of saved bookmarks" do
    bookmarks = Bookmark.view
    expect(bookmarks).to eq ["https://www.theodinproject.com", "https://www.udemy.com", "https://www.codecademy.com", "https://www.codewars.com/dashboard"]
  end
end
