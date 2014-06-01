class DonationsController < ApplicationController

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(params[:donation])
    if @donation.save_with_payment
      redirect_to thank_you_path
    else
      render :new
    end
  end

end
