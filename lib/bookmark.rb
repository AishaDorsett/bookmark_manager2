require "pg"

class Bookmark
  def self.view
    connection = PG.connect(dbname: "bookmark_manager")
    p result = connection.exec("SELECT * FROM bookmarks")
    p result.map { |bookmark| bookmark["url"] }
  end
end
