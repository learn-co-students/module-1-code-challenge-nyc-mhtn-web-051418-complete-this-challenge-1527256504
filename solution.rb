# Please copy/paste all three classes into this file to submit your solution!

#class Customer
class Customer
  @@all = []

  # instance methods

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, review)
    Review.new(self, restaurant, review)
  end

  # class methods

  def self.all
    @@all
  end

  def self.all_names
    all.map(&:full_name)
    # from all.map {|customer_instance| customer_instance.full_name}
  end

  def self.find_all_by_first_name(name)
    all.select { |customer_instances| customer_instances.first_name == name.split[0] }
  end

  def self.find_by_name(name)
    find_all_by_first_name(name).detect { |customer_instances| customer_instances.last_name == name.split[1] }
  end
end

#class Restaurant
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

#class Review
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
