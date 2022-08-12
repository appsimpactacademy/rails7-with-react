class Api::V1::QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render json: @questions, status: :ok
  end

end
