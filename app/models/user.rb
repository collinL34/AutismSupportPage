class User < ApplicationRecord
  has_secure_password

  has_many :posts, foreign_key: 'author_id'
  has_many :friendships
  has_many :friends, through: :friendship
  has_many :comments, as: :commentable
  has_many :images, foreign_key: 'owner_id'
end
