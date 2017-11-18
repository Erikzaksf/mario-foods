class Product < ActiveRecord::Base
  has_many :reviews

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  scope :most_reviews, -> {(
    select("products.id, products.name, products.cost ,products.origin, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1)
  )}
  scope :made, -> { where(origin: "United States" )}

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :origin, :presence => true
end
