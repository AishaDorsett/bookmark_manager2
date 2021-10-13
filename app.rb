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
    # p ENV
    @bookmarks = Bookmark.view
    # @new_bookmark = session[:new_bookmark]
    erb :bookmark
  end

  post "/bookmark" do
    Bookmark.create(new_bookmark: params[:new_bookmark])
    redirect "/bookmark"
  end

  get "/add" do
    "hello"
    erb :"add_bookmark"
  end




end
