class Recipe < ActiveRecord::Base
  has_many :kitchens
  has_many :meals
  has_many :kinds
  has_attached_file :upload, styles: { medium: '300x300>', thumb: '100x100>' }
                    #:default_url => ":style/missing_avatar.png"
  validates_attachment_content_type :upload, content_type: /\Aimage\/.*\Z/

  validates :recipe, :kitchen, :meal, :kind,
            :ingredients, :steps, presence: true



end
