class StudentController < ApplicationController
  def index
    @students ||= Student.all
  end

  def show
    @students ||= Student.all
    @student ||= Student.find_by_slug!(params[:id])
  end
end
