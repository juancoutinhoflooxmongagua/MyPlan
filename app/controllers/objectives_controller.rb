class ObjectivesController < ApplicationController
    def index
      @objectives = Objective.all
    end
  
    def show 
      @objective = Objective.find(params[:id])
    end
  
    def new 
      @objective = Objective.new
    end
  
    def create
      @objective = Objective.new(objective_params)
      @objective.save ? redirect_to(@objective) : render(:new) 
    end
  
    def edit
      @objective = Objective.find(params[:id]) 
    end
  
    def update 
      @objective = Objective.find(params[:id])
      @objective.update(objective_params) ? redirect_to(@objective) : render(:edit)
    end
  
    def destroy
      @objective = Objective.find(params[:id])
      @objective.destroy
      redirect_to objectives_path
    end
  
    private 
  
    def objective_params
      params.require(:objective).permit(:title, :description, :status, :image)
    end
  end
  