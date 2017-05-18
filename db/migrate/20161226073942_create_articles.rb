class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string   :link
      t.string   :body
      t.string   :title
      t.integer  :author_id
      t.string   :image_link
      t.integer  :comment_id
      t.integer  :category_id

      t.timestamps
    end
  end
end
