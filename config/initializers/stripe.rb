Rails.configuration.stripe = {
  publishable_key:  (ENV['PUBLISHABLE_KEY'] || Rails.application.credentials.stripe[:stripe_publishable_key]),
  secret_key:  (ENV['STRIPE_TEST_SECRET_KEY'] || Rails.application.credentials.stripe[:stripe_secret_key])
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]