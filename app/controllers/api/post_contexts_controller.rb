module API
  class PostContextsController < ApiController

    def index
      gIndex(PostContext)
    end

    def create
      gCreate(PostContext, post_context_params)
    end

    def show
      gShow(PostContext)
    end

    def update
      gUpdate(PostContext, post_context_params)
    end

    def destroy
      gDestroy(PostContext)
    end


    private
      def post_context_params
        params.require(:post_context).permit(:name)
      end
  end
end
