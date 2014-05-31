class DonationsController < ApplicationController

  def index
    @donations = Donation.find_by_user_id params[:user_id]
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(params[:donation])
    if @donation.save_with_payment
      redirect_to client_path(@donation.client), notice: 'Thank you for donating.'
    else
      render :new
    end
  end

end
