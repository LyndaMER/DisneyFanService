class Character < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_and_synopsis,
                  against: %i[name univers description],
                  using: {
                    tsearch: { prefix: true }
                  }
end
