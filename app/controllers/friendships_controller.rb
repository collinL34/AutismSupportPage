class FriendshipsController < ApplicationController
    def index
    end

    def new
    end

    def create
      user = User.find(session[:user_id])
      friend = User.find(params[:id])

      p '#################################'

      friendship = Friendship.create(user_id: user.id, friend_id: friend.id)
    end
end