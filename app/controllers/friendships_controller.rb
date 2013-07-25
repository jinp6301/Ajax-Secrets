class FriendshipsController < ApplicationController

  def create
    params[:friendship] ||= {}
    params[:friendship][:friend_id] = params[:user_id]
    params[:friendship][:user_id] = current_user.id
    @friend = Friendship.new(params[:friendship])
    @friend.save
  end

  def destroy
    @friend = Friendship.find_by_user_id_and_friend_id(current_user.id, params[:user_id])
    @friend.destroy
  end

end
