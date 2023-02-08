class StudentsController < ApplicationController

  def index
    # if params[:name]
    #   students = Student.select{|student| student.first_name == params[:name] || student.last_name == params[:name]}
    # else
    #   students = Student.all
    # end
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
