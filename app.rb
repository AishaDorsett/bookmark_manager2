# frozen_string_literal: true

require "sinatra"
require "sinatra/reloader"
require "./lib/bookmark.rb"

# class
class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Hello World!"
  end

  get "/bookmark" do
    # p ENV

    @bookmarks = Bookmark.view
    erb :bookmark
  end
end
