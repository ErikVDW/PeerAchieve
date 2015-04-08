if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV[ 'PUBLISHABLE_KEY' ],
    secret_key:      ENV[ 'SECRET_KEY' ]
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_UQ2EqhNNQRrDkD5V0Z1xgpS5',
    secret_key:      'sk_test_hkiYUTQzHiCTBfHuUSXpUP7n'
  }
end