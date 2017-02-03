class User < ApplicationRecord
  has_secure_password

  has_many :articles, foreign_key: 'author_id'
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :comments, as: :commentable
  has_many :images, foreign_key: 'owner_id'

  def profile_img=(img_link)
    write_attribute(:profile_img, img_link)
  end

  def full_name()
    "#{self.first_name} #{self.last_name}"
  end

end
