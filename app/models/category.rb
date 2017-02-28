class Category < ApplicationRecord
  has_many :articles, foreign_key: 'category_id'

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end

end
