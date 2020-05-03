class QuestionsController < ApplicationController
  def index 
    questions = Question.all 
    render json: questions.to_json(:except => [:updated_at, :created_at])
  end

  def show 
    question = Question.find_by(id: params[:id])
    render json: question.to_json(:except => [:updated_at, :created_at])
  end
end