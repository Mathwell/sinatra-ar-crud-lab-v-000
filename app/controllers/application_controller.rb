require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts/new' do
    erb :new
  end

  post '/posts' do
    @post=Post.create(name:params[:post_name], content: params[:post_content])
    @posts=Post.all
    puts @posts
    erb :index
  end

  get '/posts' do
    @posts=Post.all
    puts @posts
    erb :index
  end

  get 'posts/:id' do
    @post=params[:id]
    puts post
    erb :show
  end

end
