class MoodsController < ApplicationController
    get '/moods' do
        Mood.all.to_json
    end

    get '/moods/:id' do
        mood = Mood.find(params[:id])
        mood.to_json
    end
        
    post '/moods' do
        # @mood = Mood.create(params)
        # if @mood.id
        #     @mood.to_json
        # else
        #     @mood.errors.full_messages.to_sentence
        # end
        mood = Mood.create(
            mood: params[:mood],
            date: params[:date],
            win: params[:win],
            challenge: params[:challenge],
            user_id: User.last.id
        )
        mood.to_json
    end

    delete '/moods/:id' do
        mood = Mood.find(params[:id])
        mood.destroy
        mood.to_json
    end
end