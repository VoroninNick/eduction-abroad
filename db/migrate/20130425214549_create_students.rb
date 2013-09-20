class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :question
      t.text :answer
      t.boolean :published
      t.string :slug

      t.timestamps
    end
    add_index :students, :slug
  end
end
