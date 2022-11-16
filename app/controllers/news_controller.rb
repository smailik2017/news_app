class NewsController < InheritedResources::Base

  before_action :authenticate_user!

  def index
    @news = News.all.order(:id).paginate(:page => params[:page], 
                                         :per_page => 10)
  end

  private

    def news_params
      params.require(:news).permit(:header, :content, :user_id)
    end

end
