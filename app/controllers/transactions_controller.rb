class TransactionsController < ApplicationController
    def create
        transaction = Transaction.create(transaction_params)
        if transaction.valid?
            render json: transaction
        else
            render json: {errors: transaction.errors.full_messages}
        end
    end

    private

    def transaction_params
        params.permit(
            :buyer_id,
            :seller_id,
            :listing_id,
            :final_price
        )
    end
end

