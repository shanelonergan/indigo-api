class Listing < ApplicationRecord
    belongs_to :brand
    belongs_to :category
    belongs_to :condition
    belongs_to :mill
    belongs_to :wash
    belongs_to :user

    has_many :favorites
end
