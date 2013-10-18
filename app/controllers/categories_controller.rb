class categoriesController < ApplicationController
  def index
    @categories = Categories.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save 
      flash[:success] = 'category created'
      redirect_to @categories
    else
      flash[:alert].now = 'Invalid entry'
      render 'new'
    end
  end

  def edit
    @category = category.find(params[:id])
  end

  def update
    @category = category.find(params[:id])
    if @category.update(category_params)
      flash[:success] = 'category updated'
      redirect_to @categories
    else
      flash[:alert].now = 'Invalid entry'
      render 'edit'
    end
  end

  def destroy
    categorie.find(params[:id]).destroy
    flash[:success] = 'category deleted'
    redirect_to categories_path
  end

  def show
    @category = category.find(params[:id])
  end

  private
    def category_params
      params.require(:category).permit(:id)
    end
end
