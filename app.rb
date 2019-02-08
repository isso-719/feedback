require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'
require './models'

get '/' do
    erb :index
end

get '/thanks' do
    erb :thanks
end

post '/answers' do
    Answer.create(
        name: params[:name],
        mail: params[:mail],
        problems: params[:artist],
        url: params[:url]
    )
redirect '/thanks'
end

get '/answers' do
    @answers = Answer.all
    erb :answers
end

post '/delete/:id' do
    Answer.find(params[:id]).destroy
    redirect '/answers'
end