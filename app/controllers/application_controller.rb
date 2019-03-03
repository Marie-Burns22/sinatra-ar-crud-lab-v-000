
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/article/new' do
    erb :new
  end
  
  post '/articles' do
    erb :index
  end
  
  get '/articles' do 
    @articles = Article.all 
    erb :index
  end
  
  get '/aricles/:id' do 
    @article = Article.find(params[:id])
    erb :show 
  end
  
  get '/articles/:id/edit' do 
    erb :edit
  end
  
  patch 'articles/:id' do
  end
  
  delete '/articles/:id' do
    erb :index
  end

end
