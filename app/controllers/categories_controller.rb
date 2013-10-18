class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
  
  def new
    @categories = Category.all
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = 'category created'
      redirect_to @category
    else
      flash[:alert].now = 'Invalid entry'
      redirect_to 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:success] = 'category updated'
      redirect_to @category
    else
      flash[:alert] = 'Invalid entry'
      render 'edit'
    end
  end

  def destroy
    Category.find(params[:id]).destroy
    flash[:success] = 'category deleted'
    redirect_to categorys_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
