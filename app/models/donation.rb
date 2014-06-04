class Donation < ActiveRecord::Base

  belongs_to :donor
  belongs_to :goal

  def description
    "#{donor} gave $#{amount} to #{goal.client} towards their #{goal} goal."
  end

  def save_with_payment
    true
    # if valid?
    #   customer = Stripe::Customer.create(
    #     email: @donation.donor_email,
    #     card:  params[:stripeToken]
    #   )

    #   charge = Stripe::Charge.create(
    #     customer:    customer.id,
    #     amount:      @donation.amount,
    #     description: @donation.description,
    #     currency:    'usd'
    #   )
    #   self.stripe_customer_token = customer.id
    #   save!
    # rescue Stripe::CardError => e
    #   flash[:error] = e.message
    #   redirect_to client_path(@donation.client)
    # end
  end
end
