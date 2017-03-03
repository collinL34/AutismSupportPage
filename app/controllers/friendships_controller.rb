class FriendshipsController < ApplicationController
    def index
    end

    def new
    end

    def create
      user = User.find(session[:user_id])
      friend = User.find(params[:user_id])

      friendship = Friendship.new(user_id: user.id, friend_id: friend.id)

      if friendship.save
        redirect_to user
      else
        redirect_to :root
      end
    end
end