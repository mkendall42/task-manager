class Api::V1::TasksController < ApplicationController
  def index()
    # render json: {
    #   example_key: {
    #     example_nexted_key: "It worked!"
    #   },
    #   example_array_key: ["Array item 1", "Array item 2"]
    # }
    # render json: Task.all
    #Actually, let's format this better (don't show creation / access times on the FE)
    tasks = Task.all
    render json: TaskSerializer.format_tasks(tasks)
  end

  def show()
    # binding.pry
    render json: Task.find(params[:id])
  end

  def create()
    # binding.pry
    render json: Task.craete(task_params())
  end

  def update()
    render json: Task.update(params[:id], task_params)
  end

  def destroy()
    render json: Task.delete(params[:id])
  end

  private

  def task_params()
    #For validation purposes
    params.require(:task).permit(:title, :description)
  end
end
