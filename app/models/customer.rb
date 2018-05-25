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
