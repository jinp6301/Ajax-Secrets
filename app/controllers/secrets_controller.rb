class SecretsController < ApplicationController
  def index
    respond_to do |format|
      format.html { render :index }
      format.json { render :json => Secret.all }
    end
  end

  def create
    params[:secret][:author_id] = current_user.id
    params[:secret][:recipient_id] = params[:user_id]
    @secret = Secret.create!(params[:secret])

    respond_to do |format|
      format.json { render :json => @secret }
    end
  end

  def new
    @secret = Secret.new()
  end
end
