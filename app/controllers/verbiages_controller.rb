class VerbiagesController < ApplicationController
  def index
    @verbiages = Verbiage.all
  end

  def show
    @verbiage = Verbiage.find(params[:id])
  end

  def new
  end

  def edit
  end
end
