require 'stripe'
require 'dotenv'
Dotenv.load

class ChargesController < ApplicationController

    def create

        Stripe.api_key = ENV['STRIPE_SECRET_KEY']
        key = ENV['STRIPE_SECRET_KEY']

        # byebug

        session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            line_items: [{
              name: 'T-shirt',
              description: 'Comfortable cotton t-shirt',
              images: ['https://example.com/t-shirt.png'],
              amount: 500,
              currency: 'usd',
              quantity: 1,
            }],
            success_url: 'https://example.com/success?session_id={CHECKOUT_SESSION_ID}',
            cancel_url: 'https://example.com/cancel',
          )
    end

end
