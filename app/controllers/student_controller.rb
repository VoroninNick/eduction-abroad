class StudentController < ApplicationController
  def index
  end

  def show
    @student ||= Student.find_by_slug!(params[:id])
  end
end
