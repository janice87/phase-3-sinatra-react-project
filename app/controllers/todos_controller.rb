class TodosController < ApplicationController
    get '/todos' do
        Todo.all.to_json
    end

    get '/todos/:id' do
        todo = Todo.find(params[:id])
        todo.to_json
    end

    post 'todos' do
        todo = Todo.create(
            t.text :todo
        )
    end

end