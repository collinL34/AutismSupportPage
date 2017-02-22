class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  def self.add_friend(current_user, new_friend)
    p '******************************'
    if current_user.id != new_friend.id
      current_user.friendships.create(user_id: current_user.id, friend_id: new_friend.id)
    else
      p "Cant be the same user!"
    end
  end

end
