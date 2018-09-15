class FiguresController < ApplicationController

  get '/figures' do
    erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  get '/figures/:id' do
    erb :'/figures/show'
  end

  get '/figures/:id/edit' do
    erb :'/figures/edit'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    @title = Title.create(params[:title]) if params[:title]
    @landmark = Landmark.create(params[:landmark]) if params[:landmark]
    
    redirect "/figures/#{@figure.id}"
  end

end
