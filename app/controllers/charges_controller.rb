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
        # The following fields are optional
        puts "Code is: #{e.error.code}" if e.error.code
        puts "Decline code is: #{e.error.decline_code}" if e.error.decline_code
        puts "Param is: #{e.error.param}" if e.error.param
        puts "Message is: #{e.error.message}" if e.error.message

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
