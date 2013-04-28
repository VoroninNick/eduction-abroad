class Student < ActiveRecord::Base
  attr_accessible :answer, :published, :question, :slug

  validates_presence_of :question, :slug, :answer
  validates_uniqueness_of :question, :slug
  before_validation :get_url

  def to_param
    slug
  end

  def get_url
    self.slug ||= name.parameterize
  end
end
