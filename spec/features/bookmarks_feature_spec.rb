feature "bookmarks" do
  scenario "returns a list of bookmarks" do
    visit "/bookmark"

    Bookmark.create(new_bookmark: 'http://www.makersacademy.com')
    Bookmark.create(new_bookmark: 'http://www.destroyallsoftware.com')
    Bookmark.create(new_bookmark: 'http://www.google.com')
    Bookmark.create(new_bookmark: 'http://www.twitter.com')

    bookmarks = Bookmark.view

    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
    expect(bookmarks).to include "http://www.twitter.com"
  end
end
