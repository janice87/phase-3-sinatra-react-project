class MoodsController < ApplicationController
    get '/moods' do
        Mood.all.to_json
    end

    get '/moods/:id' do
        mood = Mood.find(params[:id])
        mood.to_json
    end

    post '/moods' do
        mood = Mood.create(
            mood: params[:mood],
            date: params[:date],
            win: params[:win],
            challenge: [:challenge]
        )
    end
end