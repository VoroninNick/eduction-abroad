class PageController < ApplicationController
  def index
    #@last ||= Article.offset(rand(Article.count)).last(4)
    @last ||= Article.find(:all, :order => "RANDOM()", :limit => 4)
    @feedback = Feedback.find(:all, :order => "RANDOM()", :limit => 6)
  end

  def about
  end

  def contact
    @contact = Contact.new
  end
end
