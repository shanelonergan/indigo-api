class User < ApplicationRecord
    has_many :transactions
    has_many :listings
    has_many :favorites

    has_many :purchases, foreign_key: :buyer_id, class_name: 'Transaction'
    has_many :sellers, through: :purchases

    has_many :sales, foreign_key: :seller_id, class_name: 'Transaction'
    has_many :buyers, through: :sales

    has_secure_password
end
