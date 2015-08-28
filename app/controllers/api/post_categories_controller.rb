module API
  class PostCategoriesController < ApplicationController
  before_action :getCategory, only:[:show, :update, :destroy]
  def getCategory
    @post_category = PostCategory.find(params[:id])
  end

  def index
    post_categories= PostCategory.all
    respond_to do |format|
      format.json {render json: post_categories, status: :ok}
    end
  end

  def create
    post_category  = PostCategory.new(post_categories_params)
    respond_to do |format|
      if post_category.save
        format.json {render json: post_category, status: :created}
      else
        format.json {render status: 400}
      end
    end
  end

  def show
    respond_to do |format|
      format.json { render json: @post_category, status: :ok}
    end
  end

  def update
    respond_to do |format|
      if @post_category.update(post_categories_params)
        format.json {render json: @post_category, status: :ok}
      else
        format.json {render status: 400}
      end
    end
  end

  def destroy
    if @post_category.destroy
      head 204
    else
      head 400
    end
  end

  private
    def post_categories_params
      params.require(:post_category).permit(:name)
    end

  end
end
