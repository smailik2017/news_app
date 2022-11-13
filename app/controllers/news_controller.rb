class NewsController < InheritedResources::Base

  before_action :authenticate_user!

  private

    def news_params
      params.require(:news).permit(:header, :content, :user_id)
    end

end
