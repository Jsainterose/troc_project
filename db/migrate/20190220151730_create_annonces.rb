class CreateAnnonces < ActiveRecord::Migration[5.2]
  def change
    create_table :annonces do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.text :location
      t.string :condition
      t.string :status

      t.timestamps
    end
  end
end
