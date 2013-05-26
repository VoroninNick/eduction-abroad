class AddUniListToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :uni_list, :string
  end
end
