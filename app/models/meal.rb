class Meal < ActiveRecord::Base
  belongs_to :recipe
  validates :name, presence: true
end