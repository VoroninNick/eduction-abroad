class UniversityController < ApplicationController
  def index
    @unis ||= University.all
  end

  def show
    @uni ||= University.find_by_slug!(params[:id])
  end
end
