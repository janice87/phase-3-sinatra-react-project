require 'pry'

class TodosController < ApplicationController
    get '/todos' do
        Todo.all.to_json
    end

    get '/todos/:id' do
        todo = Todo.find(params[:id])
        todo.to_json
    end

    post '/todos' do
        todo = Todo.create(
            todo: params[:todo],
            user_id: User.last.id
            )       
        todo.to_json
    end

    delete '/todos/:id' do
        todo = Todo.find(params[:id])
        todo.destroy
        todo.to_json        
    end
end