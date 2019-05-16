class Employee < ActiveRecord::Base
    # EX6 1. Add belongs_to: store to employee class
  belongs_to :store
  # EX7 1. Using ActiveRecords validates first_name, presence: true
  validates :first_name, presence: true
  # EX7 2. Using ActiveRecords validates last_name, presence: true
  validates :last_name, presence: true
  # EX7 3. Using ActiveRecords validates hourly_rate, presence: true, numericality between 40 & 200
  validates :hourly_rate, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  # EX7 4. Using ActiveRecords validates store_id, presence: true, numericality
  validates :store_id, presence: true, numericality: {only_interger: true}
end


# Excercise 7. Validations for both models.

# 1. Must always have a first name present
# 2. Must always have a last name present
# 3. Must always have an hourly_rate that is a number(Integer) between 40 & 200
# 4. Must always have a store to be belonging to
