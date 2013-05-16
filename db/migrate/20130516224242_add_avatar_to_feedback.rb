class AddAvatarToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :avatar_file_name, :string
    add_column :feedbacks, :avatar_content_type, :string
    add_column :feedbacks, :avatar_file_size, :integer
    add_column :feedbacks, :avatar_updated_at, :datetime
  end
end
