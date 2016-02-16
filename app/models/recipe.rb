class Recipe < ActiveRecord::Base
  belongs_to :kitchen
  belongs_to :meal
  belongs_to :kind
  has_attached_file :upload, styles: { medium: '300x300>', thumb: '100x100>' },
                    :default_url => ":style/missing_avatar.png"
  validates_attachment_content_type :upload, content_type: /\Aimage\/.*\Z/

  validates :recipe, :kitchen_id, :meal_id, :kind_id,
            :ingredients, :steps, presence: true

end
