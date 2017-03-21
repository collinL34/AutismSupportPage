class User < ApplicationRecord
  validates_numericality_of :zip_code
  validates_presence_of     :first_name
  validates_presence_of     :last_name
  validates_presence_of     :email
  validates_uniqueness_of   :email

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
