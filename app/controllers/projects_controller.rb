class ProjectsController < ApplicationController
  def index

  end

  def new
    # 准备建立model
    @project = Project.new
  end

  def create
    # 用params来new Project
    @project = Project.new(project_params)

    #leon: call @project.save to save your new Project object into the projects table
    if @project.save
      flash[:notice] = "Project has been created."
      # The redirect_to method takes either an object, as in the create action, or a path to redirect to as a string
      redirect_to @project
    else
      # nothing yet
    end
  end

  def show
    # 根据hash找id值
    @project = Project.find(params[:id])
  end

  private
  def project_params
    params.require(:project).permit(:name, :description);
  end
end
