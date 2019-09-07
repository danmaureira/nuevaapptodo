class TodosController < ApplicationController
before_action :authenticate_user!
  def index
    @todos = Todo.all
  end
end
