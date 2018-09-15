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

  end

end
