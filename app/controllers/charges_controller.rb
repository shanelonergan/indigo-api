require 'stripe'
require 'dotenv'
Dotenv.load

class ChargesController < ApplicationController

    def create

      begin

        Stripe.api_key = ENV['STRIPE_SECRET_KEY']
        token = params[:charge][:token]
        price = params[:price]

        # byebug

        charge = Stripe::Charge.create({
          amount: price * 100,
          currency: 'usd',
          description: 'Example charge',
          source: token,
        })

        render json: charge

      rescue Stripe::CardError => e
        puts "Status is: #{e.http_status}"
        puts "Type is: #{e.error.type}"
        puts "Charge ID is: #{e.error.charge}"

      rescue Stripe::InvalidRequestError => e
        render json: e

      rescue Stripe::AuthenticationError => e
        render json: e

      rescue Stripe::APIConnectionError => e
        render json: e

      rescue Stripe::StripeError => e
        render json: e

      rescue => e
        render json: e

      end
    end
end
