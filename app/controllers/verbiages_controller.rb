class VerbiagesController < ApplicationController
  def index
    @verbiages = Verbiage.all
  end
  
  def create
    @verbiage = Verbiage.new(verbiage_params)
    @verbiage.user = current_user
      if @verbiage.save
        flash[:notice] = "New Verbiage has been added!"
        redirect_to @verbiage
      else
        flash[:error] = "Your verbiage was not added to the catalogue. Please try again."
        render :new
      end
  end

  def show
    @verbiage = Verbiage.find(params[:id])
  end

  def new
    @verbiage = Verbiage.new
  end

  def edit
    @verbiage = Verbiage.find(params[:id])
  end
  
  def update
    @verbiage = Verbiage.find(params[:id])
    if @verbiage.update_attributes(verbiage_params)
      flash[:notice] = "Verbiage was successfully updated."
      redirect_to @verbiage
    else
      flash[:error] = "Verbiage was not updated. Please try again."
      render :edit
    end
  end
  
  private
  
  # Using Strong Params
  def verbiage_params
    params.require(:verbiage).permit(:title, :body)
  end
end
