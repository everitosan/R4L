module API
  class PostsController < ApiController

    def index
      gIndex(Post)
    end

    def create
      gCreate(Post, posts_params)
    end

    def show
      gShow(Post)
    end

    def update
      gUpdate(Post, posts_params)
    end

    def destroy
      gDestroy(Post)
    end

    def posts_params
        params.require(:post).permit(:user_id, :text, :post_context_id, :contextId, :post_category_id, :image, :video, :likes)
    end
  end
end
