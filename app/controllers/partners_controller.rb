class PartnersController < ApplicationController
  def show
    @partner = Partner.find params[:id]
  end

  def new
    @partner = Partner.new
  end

  def create
    # TODO: Create Partner
  end

  def edit
    @partner = Partner.find params[:id]
  end

  def update
    @partner = Partner.find params[:id]
    # TODO: Update Partner
  end

  private
  def partner_params
     params.require(:partner).permit(:email, :password, :photo, :bio, :homepage)
  end
end
