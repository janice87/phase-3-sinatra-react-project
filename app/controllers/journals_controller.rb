class JournalsController < ApplicationController
    get '/journals' do
        Journal.all.to_json
    end

    get '/journals/:id' do
        journal = Journal.find(params[:id])
        journal.to_json
    end

    post '/journals' do
        #binding.pry
        journal = Journal.create(
        date: params[:date],    
        content: params[:content],
        user_id: User.last.id
        )
        journal.to_json
    end

    patch '/journals/:id' do
        journal = Journal.find(params[:id])       
        journal.update(
            date: params[:date], 
            content: params[:content]
            )
        journal.to_json
    end

    delete '/journals/:id' do
        journal = Journal.find(params[:id])
        journal.destroy
        journal.to_json
    end

end