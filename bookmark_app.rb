require 'sinatra/base'
require 'sinatra/flash'
require './lib/link'
require './database_connection_setup'
require 'uri'


class Bookmark < Sinatra::Base
  register Sinatra::Flash
  enable :sessions


  get '/' do
    @links = Link.all
    erb :index
  end

  get '/add-a-new-link' do
    erb :add_a_new_link
  end

  post '/create-new-link' do
    link = Link.create(url: params['url'], title: params['title'])
    flash[:notice] = "You must submit a valid URL." unless link
    redirect('/')
  end

  post '/delete-link' do
    Link.delete(id: params['id'])
    redirect('/')
  end

  get '/update-link/:id' do
  @link = Link.find(params['id'])
  erb :update_a_link
end

  post '/update-link' do
    Link.update(params['id'], params)
    redirect('/')
  end

  post '/update-link' do
    Link.update(id: params['id'], url: params['url'], title: params['title'])
  end

run! if app_file == $0
end
