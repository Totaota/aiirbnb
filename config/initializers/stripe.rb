Rails.configuration.stripe = {
    :publishable_key => 'pk_test_h4fzW9z80kq0KELt2xTC0kNS',
    :secret_key => 'sk_test_HBnXiej53iE3HtjUVVBO8Zxn'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]