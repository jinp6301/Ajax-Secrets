class FriendshipsController < ApplicationController

  def create
    @friend = Friendship.new(params[:friendship])
    @friend.save
  end

end
