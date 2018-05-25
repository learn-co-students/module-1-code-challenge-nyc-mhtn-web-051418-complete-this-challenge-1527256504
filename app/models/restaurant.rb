class Restaurant
  @@all = []

  # instance methods
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    find_my_reviews.map(&:review)
    # from find_my_reviews.map { |review_instance| review_instance.review)
  end

  def customers
    find_my_reviews.map(&:customer)
    # from find_my_reviews.map { |review_instance| review_instance.customer)
  end

  def find_my_reviews
    Review.all.select { |review_instances| review_instances.restaurant == self }
  end

  # class methods
  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.select { |restaurant_instance| restaurant_instance.name == name }.first
  end
end
