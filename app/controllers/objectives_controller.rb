class ObjectivesController < ApplicationController
  before_action :set_objective, only: [:show, :edit, :update, :destroy]

  def index
    @objectives = Objective.all
    @objective = Objective.new
  end

  def show
  end

  def new
    @objective = Objective.new
  end

  def create
    @objective = Objective.new(objective_params)
    if @objective.save
      redirect_to objectives_path, notice: 'Objetivo criado com sucesso.'
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @objective.update(objective_params)
      redirect_to @objective, notice: 'Objetivo atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @objective.destroy
    redirect_to objectives_path, notice: 'Objetivo excluído com sucesso.'
  end

  private

  def set_objective
    @objective = Objective.find(params[:id])
  end

  def objective_params
    params.require(:objective).permit(:title, :description, :status, :image)
  end
end
