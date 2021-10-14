feature "bookmarks" do
  scenario "returns a list of bookmarks" do
    visit "/bookmark"

    Bookmark.create('MakersAcademy', 'http://www.makersacademy.com')

    bookmarks = Bookmark.view

    expect(bookmarks).to include ({:title=>"MakersAcademy", :url=>"http://www.makersacademy.com"})

  end
end
