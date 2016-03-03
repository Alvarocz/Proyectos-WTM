class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to answers_path
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.subject = @answer.homework.subject
    @answer.subject_id = @answer.homework.subject.id
    @anser.student = @answer_params.homework.student
    @answer.save
    redirect_to answers_path
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.update(answer_params)
    redirect_to answers_path
  end

  def answer_params
    params.require(:answer).permit(:message, :score, :student_id, :homework_id)
  end
end
