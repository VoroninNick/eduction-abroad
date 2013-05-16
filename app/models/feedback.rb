# encoding: utf-8
class Feedback < ActiveRecord::Base
  attr_accessible :age, :feedback, :name, :avatar

  has_attached_file :avatar,
                    :styles => {
                        admin:      '65x65#',
                        thumb:      '100x100#',
                        show:       '250x250#'
                    },
                    :storage => :s3,
                    :s3_credentials => Rails.root.join("config/amazon-s3.yml"),
                    :path => '/:style/:id/:filename',
                    :url  => ':s3_eu_url'

  rails_admin do
    list do
      field :name do
        label 'Имя'
      end
      field :age do
        label 'Возраст'
      end
      field :feedback do
        label 'Отзыв'
      end
    end

    edit do
      field :name do
        label 'Имя'
      end
      field :age do
        label 'Возраст'
      end
      field :feedback do
        label 'Отзыв'
      end
      field :avatar do
        label 'Изображение'
      end
    end

  end
end
