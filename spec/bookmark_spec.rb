require_relative "../lib/bookmark"
describe ".view" do
  it "returns a list of bookmarks" do
    connection = PG.connect(dbname: "bookmark_manager_test")

    connection.exec("INSERT INTO bookmarks (title, url) VALUES ('MakersAcademy','http://www.makersacademy.com');")

    bookmarks = Bookmark.view

    expect(bookmarks).to include ({:title=>"MakersAcademy", :url=>"http://www.makersacademy.com"})
  end
end

describe ".create" do 
  it "creates a new bookmark" do 
    Bookmark.create('Facebook', 'http://www.facebook.com')

    expect(Bookmark.view).to include  ({:title=>"Facebook", :url=>"http://www.facebook.com"})
  end
end
