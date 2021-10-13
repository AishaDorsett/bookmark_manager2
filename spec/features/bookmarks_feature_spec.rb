feature "bookmarks" do
  scenario "returns a list of bookmarks" do
    visit "/bookmark"

    connection = PG.connect(dbname: "bookmark_manager_test")

    connection.exec("INSERT INTO bookmarks VALUES (1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES (2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES (3, 'http://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES (4, 'http://www.twitter.com');")

    bookmarks = Bookmark.view
    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
    expect(bookmarks).to include "http://www.twitter.com"
  end
end
