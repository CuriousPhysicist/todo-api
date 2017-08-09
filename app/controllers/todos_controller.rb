class TodosController < ApplicationController

	def index
		@todos = Todo.all
		json_response(@todos)
	end

	def show
		@todo = Todo.find(params[:id])
		json_response(@todo)
	end

	def create
		@todo = Todo.create!(todo_params)
		json_response(@todo, :created)
	end

	def update
	end

	def destroy
	end

	private

	def todo_params
		params.permit(:title, :created_by)
	end

end
