class Employee < ApplicationRecord
  belongs_to :company, counter_cache: true
end