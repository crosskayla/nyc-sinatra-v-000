class LandmarksController < ApplicationController

  get '/landmarks' do

  end

  get '/landmarks/new' do

  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

end
