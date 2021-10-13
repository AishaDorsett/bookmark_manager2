require_relative "../lib/bookmark"
describe ".view" do
  it "returns a list of bookmarks" do
    connection = PG.connect(dbname: "bookmark_manager_test")

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com');")

    bookmarks = Bookmark.view
    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
    expect(bookmarks).to include "http://www.twitter.com"
  end
end

describe ".create" do 
  it "creates a new bookmark" do 
    Bookmark.create(new_bookmark: 'http://www.facebook.com')

    expect(Bookmark.view).to include 'http://www.facebook.com'
  end
end
