class ExpendituresController < ApplicationController
  load_and_authorize_resource

  # GET /activities/
  def index
    redirect_to categories_path
  end

  # GET /activities/new
  def new
    @expenditure = Expenditure.new
  end

  # POST /activities
  def create
    @expenditure = Expenditure.new(expenditure_params)
    @expenditure.author = current_user

    respond_to do |format|
      if @expenditure.save
        format.html { redirect_to @expenditure.categories.first, notice: 'Expenditure was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters
  def expenditure_params
    params.require(:expenditure).permit(:name, :amount, category_ids: [])
  end
end
