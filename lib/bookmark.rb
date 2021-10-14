require "pg"

class Bookmark
  def self.view
    if ENV["ENVIRONMENT"] == "test"
      connection = PG.connect(dbname: "bookmark_manager_test")
    else
      connection = PG.connect(dbname: "bookmark_manager")
    end

    result = connection.exec("SELECT * FROM bookmarks")
    p result
    result.map do |bookmark|
      { title: bookmark["title"] , url: bookmark["url"] }
    end
  end

  def self.create(bookmark_name, new_bookmark)
    if ENV["ENVIRONMENT"] == "test"
      connection = PG.connect(dbname: "bookmark_manager_test")
    else
      connection = PG.connect(dbname: "bookmark_manager")
    end 
    
    connection.exec("INSERT INTO bookmarks (title, url ) VALUES('#{bookmark_name}', '#{new_bookmark}')")
  end
end
