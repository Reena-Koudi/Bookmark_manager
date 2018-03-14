require 'sinatra/base'
require './lib/link.rb'
require 'pg'

class Bookmark < Sinatra::Base
  enable :sessions

  get '/' do
    p 'ENV'
    @links = Link.all
    erb :index
  end

  get '/add-a-new-link' do
    erb :add_a_new_link
  end

  post '/create-a-link' do
    Link.create(url: params['url'])
    redirect('/')
  end

run! if app_file == $0
end
