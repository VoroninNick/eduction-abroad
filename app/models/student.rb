# encoding: utf-8
class Student < ActiveRecord::Base
  attr_accessible :answer, :published, :question, :slug

  # Adding translate Class
  translates :answer, :question

  class Translation
    attr_accessible :locale
  end

  validates_presence_of :question, :slug, :answer
  validates_uniqueness_of :question, :slug
  before_validation :get_url

  rails_admin do
    list do
      field :published do
        label 'Опубликовано?'
      end
      field :question do
        label 'Вопрос'
      end
      field :answer do
        label 'Ответ'
      end
    end

    edit do
      field :published do
        label 'Опубликовано?'
      end
      field :question do
        label 'Вопрос'
      end
      field :answer do
        label 'Ответ'
        ckeditor do
          true
        end
      end
      field :slug do
        read_only true
      end
    end
  end

  def to_param
    slug
  end

  def get_url
    self.slug ||= question.parameterize
  end
end
