class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show]

  def index
    @categories = current_user.categories
  end

  def show
    @expenditures = @category.expenditures.order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to root_path, notice: 'Category was successfully created.' }
      else
        flash[:error] = @category.errors.full_messages
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_category
    @category = Category.includes(:expenditures).find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
