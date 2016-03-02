class HomeworksController < ApplicationController
  def index
    @homeworks = Homework.all
  end

  def destroy
    @homework = Homework.find(params[:id])
    @homework.destroy
    redirect_to homeworks_path
  end

  def create
    @homework = Homework.new(homework_params)
    @homework.teacher = @homework.subject.teacher
    @homework.save
    redirect_to homeworks_path
  end

  def edit
    @homework = Homework.find(params[:id])
  end

  def new
    @homework = Homework.new
  end

  def show
    @homework = Homework.find(params[:id])
  end

  def update
    @homework = Homework.find(params[:id])
    @homework.update(homework_params)
    redirect_to homeworks_path
  end

  def homework_params
    params.require(:homework).permit(:statement, :final_date, :subject_id)
  end
end
