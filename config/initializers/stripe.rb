Rails.configuration.stripe = {
  secret_key:      ENV['STRIPE_SECRET'],
  publishable_key: ENV['STRIPE_PUBLIC']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]