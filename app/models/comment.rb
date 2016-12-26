class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: :true
  belongs_to :author_id, class_name: 'User'
end