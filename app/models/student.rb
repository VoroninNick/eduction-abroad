class Student < ActiveRecord::Base
  attr_accessible :answer, :published, :question, :slug
end
