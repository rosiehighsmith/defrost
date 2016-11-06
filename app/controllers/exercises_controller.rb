class ExercisesController < ApplicationController
  def index
    @exercise = Exercise.first
  end
end
