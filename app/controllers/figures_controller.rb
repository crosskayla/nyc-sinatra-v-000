class FiguresController < ApplicationController

  get '/figures' do
    erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end

  get '/figures/:id/edit' do
    erb :'/figures/edit'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    @title = Title.create(params[:title]) if params[:title][:name] != ""
    @landmark = Landmark.create(params[:landmark]) if params[:landmark][:name] != ""

    binding.pry

    if !@title
      params[:titles].each do |title|
        @figure.titles << Title.find(title.id)
      end
    end

    if !@landmark
      params[:landmarks].each do |landmark_id|
        @figure.landmarks << Landmark.find(title_id)
      end
    end

    @figure.save
    redirect "/figures/#{@figure.id}"
  end

end
