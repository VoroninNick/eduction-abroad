class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.text :short_descr
      t.text :full_descr
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at
      t.boolean :published
      t.string :slug

      t.timestamps
    end
    add_index :universities, :slug
  end
end
