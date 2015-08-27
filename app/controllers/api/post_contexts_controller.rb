module API
  class PostContextsController < ApplicationController

    def index
      @PT = PostContext.all
      respond_to do |format|
        format.json {render json:@PT, status: :ok}
      end
    end

    def create
      post_context = PostContext.new(post_context_params)
      respond_to do |format|
        if post_context.save
          format.json {render json: post_context, status: :created}
        else
          format.json {render status: 400}
        end
      end
    end

    def show
      post_context = PostContext.find(params[:id])
      respond_to do |format|
        format.json { render json: post_context, status: :ok}
      end
    end

    def update
      post_context = PostContext.find(params[:id])
      respond_to do |format|
        if post_context.update(post_context_params)
          format.json {render json: post_context, status: :ok}
        else
          format.json {render status: 400}
        end
      end
    end

    def destroy
      post_context = PostContext.find(params[:id])
      if post_context.destroy
        head 204
      else
        head 400
      end
    end

    private
      def post_context_params
        params.require(:post_context).permit(:name)
      end
  end
end
