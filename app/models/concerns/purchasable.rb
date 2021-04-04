module Purchasable
  extend ActiveSupport::Concern

  included do
    has_one :product, as: :purchasable, touch: true
  end
end
