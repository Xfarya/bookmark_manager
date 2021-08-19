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
    Bookmark.new(params[:addurl])
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    erb :bookmarks
  end

  run! if app_file == $0
end