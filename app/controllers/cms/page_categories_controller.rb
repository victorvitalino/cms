module Cms
  class PageCategoriesController < ApplicationController
    layout 'templates/default-cms/default'
    
    before_action :set_page_category, only: [:edit, :destroy, :update]
    before_action :set_page_categories, except: [:index]

    def index
      @page_categories = PageCategory.all.order('created_at')
    end

    def new
      @page_category = PageCategory.new
    end

    def create
      @page_category = PageCategory.new(set_params)

      if @page_category.save
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
    
      if @page_category.update(set_params)
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
       if @page_category.destroy
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
      params.require(:page_category).permit(:name, :status)
    end

    def set_page_category
      @page_category = PageCategory.find(params[:id])
    end

    def set_page_categories
      @page_categories = PageCategory.enabled
    end

  end
end