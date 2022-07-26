require 'pry'
class TodosController < ApplicationController
    get '/todos' do
        Todo.all.to_json
    end

    get '/todos/:id' do
        todo = Todo.find(params[:id])
        todo.to_json
    end

    # post '/todos' do
        # @json = JSON.parse(request.body.read)
        # #@json => {"todo"=>"test ets est"} 
        # newtodo = Todo.create(
        #     todo: @json[:todo]
        #     )
        #     newtodo.to_json
            #binding.pry
    # end

     post '/todos' do
        todo = Todo.create(
            todo: params[:todo],
            user_id: User.last.id
            )
        #binding.pry
        todo.to_json
    end

    delete '/todos/:id' do
        todo = Todo.find(params[:id])
        todo.destroy
        todo.to_json
        # @todo = Todo.find(params[:id])
        # @todo.destroy
        # @todo.to_json
    end
end