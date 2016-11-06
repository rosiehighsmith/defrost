class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    @exercise = Exercise.new
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)
    redirect_to root_path
  end

  private
  def exercise_params
    params.require(:exercise).permit(:title, :description)
  end
end
