class AddLinkToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :link, :string

  end
end
