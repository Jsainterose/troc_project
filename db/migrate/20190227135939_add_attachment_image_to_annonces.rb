class AddAttachmentImageToAnnonces < ActiveRecord::Migration[5.2]
  def self.up
    change_table :annonces do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :annonces, :image
  end
end
