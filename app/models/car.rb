class Car < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :type_car, :address, :model, :car_maker],
    using: {
      tsearch: { prefix: true }
    }
end
