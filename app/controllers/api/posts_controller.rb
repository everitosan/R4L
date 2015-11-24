module API
  class PostsController < ApiController

    def index
      @posts = Post.limit(10)

      @postResponse = []

      @posts.each do |post|
        @postResponse.push({
          :id => post.id,
          :user=> post.user.name,
          :userPic=> post.user.picProfile,
          :text => post.text,
          :image => post.image,
          :likes => post.likes,
          :category => post.post_category.name
        })
      end

      respond_to do |format|
        format.json { render json:@postResponse, status: :ok }
      end
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
