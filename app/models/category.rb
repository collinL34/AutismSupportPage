class Category < ApplicationRecord
  has_many :articles, foreign_key: 'category_id'

  def self.search(search)
    p '****************************'
    where("name ILIKE ? OR ingredients ILIKE ? OR cooking_instructions ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end

end
