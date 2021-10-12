require_relative "../lib/bookmark"
describe ".view" do
  it "returns a list of bookmarks" do
    bookmarks = Bookmark.view
    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
    expect(bookmarks).to include "http://www.twitter.com"
  end
end
