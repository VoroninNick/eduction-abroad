class StudentController < ApplicationController
  def index
    @students ||= Student.all
  end

  def show
    @student ||= Student.find_by_slug!(params[:id])
  end
end
