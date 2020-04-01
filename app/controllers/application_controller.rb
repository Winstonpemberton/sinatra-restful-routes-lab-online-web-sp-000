require 'pry'
class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!

  get '/recipes/new' do
    erb :new
  end

  post '/recipes' do
    @recipe = Recipe.create(params)
    @recipe.save
<<<<<<< HEAD
    redirect "/recipes/#{recipe.id}"
  end

  delete '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.delete
    redirect '/recipes'
  end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end

  get '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end

  patch '/recipes/:id' do
=======
    redirect '/recipes/#{recipe.id}'
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end

  patch '/recipes/:id/edit' do
>>>>>>> a21e6be873fc7ab0dd4d42197588922b2f2156c9
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.name = params[:name]
    @recipe.ingredients = params[:ingredients]
    @recipes.cook_time = params[:cook_time]
    @recipes.save
<<<<<<< HEAD
    redirect "/recipes/#{recipe.id}"
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
=======
    redirect '/recipes/#{recipe.id}'
  end

  delete '/recipes/:id/delete' do
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.delete
    redirect to '/recipes'
>>>>>>> a21e6be873fc7ab0dd4d42197588922b2f2156c9
  end

end
