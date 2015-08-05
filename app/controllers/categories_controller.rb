class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    authorize @categories
  end

  def new
    @category = Category.new
    authorize @category
  end

  def show
    @category = Category.find(params[:id])
    authorize @category
  end

  def edit
    @category = Category.find(params[:id])
    authorize @category
  end
  
  def create
    @category = Category.new(category_params)
    authorize @category
    if @category.save
      redirect_to @category, notice: "Category was successfully created."
    else
      flash[:error] = "Category creation failed. Please try again."
      render :new
    end
  end
  
  def update
    @category = Category.find(params[:id])
    authorize @category
    if @category.update_attributes(category_params)
      redirect_to @category
    else
      flash[:error] = "Error saving category. Please try again."
      render :edit
    end
  end
  
  private
  
  # Strong Params
  def category_params
    params.require(:category).permit(:title, :body, :approved)
  end
end
