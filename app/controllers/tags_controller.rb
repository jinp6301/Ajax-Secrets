class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(params[:tag])
    @tag.save
  end

  def destroy
  end
end
