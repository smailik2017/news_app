class LikesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    logger.debug "got news_id #{params[:news_id]}"
    logger.debug "got user_id #{params[:user_id]}"
    l = Like.where(user_id: params[:user_id], news_id: params[:news_id]).first
    
    if l.nil?
      Like.create(user_id: params[:user_id], news_id: params[:news_id])
    else
      Like.delete(l)
    end
  end
end
