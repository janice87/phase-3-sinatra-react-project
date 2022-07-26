class UsersController < ApplicationController
    get '/users' do
        User.all.to_json
    end

    get '/users/:id' do
        user = User.find(params[:id])
        user.to_json
    end

    post '/users' do
        #binding.pry
        user = User.create(
        name: params[:name],    
        email: params[:email]
        )
        user.to_json
    end

    patch '/users/:id' do
        user = User.find(params[:id])      
        user.update(
            email: params[:email]
            )
        user.to_json
    end

    delete '/users/:id' do
        user = User.find(params[:id])
        user.destroy
        user.to_json
    end

end