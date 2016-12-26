class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string   :link
      t.integer  :owner_id
      t.integer  :comment_id

      t.timestamps
    end
  end
end
