class EstadosController < ApplicationController
before_action :authenticate_user!
  def create
    @todo = Todo.find(params[:todo_id])
    @estado = Estado.new(todo: @todo, user: current_user)
    if @estado.save
      redirect_to todos_path, notice: 'Se marcó como completa'
    else
      redirect_to todos_path  alert: 'No se marcó como completa'
    end
  end
  def index
    @estados = current_user.estados
  end
end
