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
    if !@title
      params[:titles].each do |title_id|
        @figure.titles << Title.find(title_id)
      end
    end

    if !@landmark
      params[:landmarks].each do |landmark_id|
        @figure.landmarks << Landmark.find(title_id)
      end
    end

    redirect "/figures/#{@figure.id}"
  end

end
