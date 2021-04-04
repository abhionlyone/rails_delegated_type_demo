class Product < ApplicationRecord
  belongs_to :affiliate
  delegated_type :purchasable, types: %w[ TravelInsurance HealthInsurance ]
end
