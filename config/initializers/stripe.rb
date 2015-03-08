if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV[ 'STRIPE PUBLISHABLE KEY' ],
    secret_key:      ENV[ 'STRIPE SECRET KEY' ]
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_UQ2EqhNNQRrDkD5V0Z1xgpS5',
    secret_key:      'sk_test_hkiYUTQzHiCTBfHuUSXpUP7n'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]