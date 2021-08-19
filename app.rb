require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do

    erb :index
  end

  post '/bookmark' do
    Bookmark.data_entry(params[:addurl], params[:title])
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.data_extraction
    erb :bookmarks
  end

  run! if app_file == $0
end