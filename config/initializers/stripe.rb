Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_Bpb4N7HfoklW3fofUBQR2Ntl'],
  :secret_key      => ENV['sk_test_SGwnOJkSlINjRw6md5KFpRf5']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
