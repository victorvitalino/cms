module Cms
  class PostCategoriesController < ApplicationController
    layout 'templates/default-cms/default'
    
    before_action :set_post_category, only: [:edit, :destroy, :update]
    before_action :set_post_categories, except: [:index]

    def index
      @post_categories = PostCategory.all.order('created_at')
    end

    def new
      @post_category = PostCategory.new
    end

    def create
      @post_category = PostCategory.new(set_params)

      if @post_category.save
        respond_to do |format|
          format.html { redirect_to action: 'index'}
          format.js { render action: 'create'}
        end
      else
        respond_to do |format|
          format.html { render action: 'new' }
          format.js   { render 'new' }
        end
      end
    end

    def edit
    end

    def update
    
      if @post_category.update(set_params)
        respond_to do |format|
          format.html {
            flash[:success] = t :success
            redirect_to action: 'index' 
          }
        end
      else
        respond_to do |format|
          format.html {
            flash[:success] = t :success
            render action: 'edit  ' 
          }
        end
      end
    
    end

    def destroy
       if @post_category.destroy
        respond_to do |format|
          format.html { 
            flash[:success] = t :success
            redirect_to action: 'index'
          }
        end
      end
    end

    private

    def set_params
      params.require(:post_category).permit(:name, :status)
    end

    def set_post_category
      @post_category = PostCategory.find(params[:id])
    end

    def set_post_categories
      @post_categories = PostCategory.enabled
    end
  end
end