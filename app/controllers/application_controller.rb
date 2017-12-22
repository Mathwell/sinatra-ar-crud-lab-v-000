require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts/new' do
    puts Post.all
    erb :new
  end

  post '/posts' do
    @post=Post.new(params[:name], params[:content])
    @posts=Post.all
    erb :index
  end

  get 'post/:id' do

  end

end
