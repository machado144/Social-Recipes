class AddAttachmentUploadToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.attachment :upload
    end
  end

  def self.down
    remove_attachment :recipes, :upload
  end
end
