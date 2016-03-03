class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.save
    redirect_to teachers_path
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(teacher_params)
    redirect_to teachers_path
  end

  def teacher_params
    params.require(:teacher).permit(:name, :last_name, :identification, :email, { subject_ids: [] })
  end
end
