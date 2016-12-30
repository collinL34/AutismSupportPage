class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string   :body
      t.integer  :comment_id
      t.integer  :category_id
      t.integer  :author_id
      t.string   :link

      t.timestamps
    end
  end
end
