class Review
  @@all = []
  # instance methods
  attr_accessor :customer, :restaurant, :review

  def initialize(customer, restaurant, review)
    @customer = customer
    @restaurant = restaurant
    @review = review
    @@all << self
  end

  # class methods
  def self.all
    @@all
  end
end
