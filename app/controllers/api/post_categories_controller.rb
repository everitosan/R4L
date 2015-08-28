module API
  class PostCategoriesController < ApiController
    
  def index
    gIndex(PostCategory)
  end

  def create
    gCreate(PostCategory, post_categories_params)
  end

  def show
    gShow(PostCategory)
  end

  def update
    gUpdate(PostCategory, post_categories_params)
  end

  def destroy
    gDestroy(PostCategory)
  end

  private
    def post_categories_params
      params.require(:post_category).permit(:name)
    end

  end
end
