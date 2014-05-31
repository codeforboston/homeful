class DonorsController < ApplicationController
  def show
    @donor = Donor.find params[:id]
  end

  def new
    @donor = Donor.new
  end

  def create
  end

  def edit
    @donor = Donor.find params[:id]
  end

  def update
    @donor = Donor.find params[:id]
    # TODO: Updating Donor
  end
end
