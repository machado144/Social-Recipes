class Meal < ActiveRecord::Base
  belongs_to :recipes
  validates :name, presence: true
end
