# frozen_string_literal: true

require "sinatra"
require "sinatra/reloader"
require "./lib/bookmark.rb"

# class
class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    "Hello World!"
  end

  get "/bookmark" do
    @bookmarks = Bookmark.view
    erb :bookmark
  end

  get "/add" do
    erb :"add_bookmark"
  end

  post "/create" do
    Bookmark.create(params[:url], params[:title])
    redirect "/bookmark"
  end
end
