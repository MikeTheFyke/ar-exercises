class Store < ActiveRecord::Base
  # EX6 1. Add has_many: emplpoyees to store class
  has_many :employees
  # EX7 1. Using ActiveRecords validates name, presence: true, length minimum of 3 characters
  validates :name, presence: true, length: { minimum: 3}
  # EX7 2. Using ActiveRecords validates annual_revenue, presence: true, numericality: true, must be greater or equal to $0 or more
  validates :annual_revenue, presence: true, numericality: {only_integer: true , greater_than_or_equal_to: 0 }
end



# Excercise 7. Validations for both models.

# Must always have a name that is a minimum of 3 characters
# Must have an annual_revenue that is a number (Integer) must be $0 or more
# Bonus stores must carry one of the mens_apparel OR womens_apparel
# - Don't use Validator Class