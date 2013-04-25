class Article < ActiveRecord::Base
  attr_accessible :avatar_content_type, :avatar_file_name, :avatar_file_size, :avatar_updated_at, :full_descr, :name, :published, :short_descr, :slug
end
