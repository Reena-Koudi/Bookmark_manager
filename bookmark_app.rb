require 'sinatra/base'
require './lib/link'
require './database_connection_setup'

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
