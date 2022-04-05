class Store < ActiveRecord::Base
  has_many :employees

  # Stores must always have a name that is a minimum of 3 characters
  validates_length_of :name, minimum: 3
  
  # Stores have an annual_revenue that is a number (integer) that must be 0 or more
  validates_size_of :annual_revenue, in: 0..Float::INFINITY

  # Stores must carry at least one of the men's or women's apparel
  validate :must_carry_womens_or_mens  
  
  def must_carry_womens_or_mens
    if !mens_apparel && !womens_apparel
      errors.add(:must_carry_atleast_mens_or_womens, " - Store must carry either men's or women's apparel!")
    end
  end
end
