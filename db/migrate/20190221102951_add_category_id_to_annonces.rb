class AddCategoryIdToAnnonces < ActiveRecord::Migration[5.2]
  def change
    add_column :annonces, :category_id, :integer
  end
end
