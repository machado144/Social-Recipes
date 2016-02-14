class Recipe < ActiveRecord::Base
  has_many :kitchens
  has_many :meals
  has_attached_file :upload, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :upload, content_type: /\Aimage\/.*\Z/

  validates :recipe, :kitchen, :meal, :kind,
            :ingredients, :steps, presence: true
end
