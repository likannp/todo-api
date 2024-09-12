class ProjectsController < ApplicationController
  def index
    @Projects = Project.all
    render json: @Projects
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
