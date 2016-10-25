class ChangeProductDescriptionColumnType < ActiveRecord::Migration
  def up
    change_column :products, :description, :text
    change_column :product_translations, :description, :text
  end

  def down
    change_column :products, :description, :string
    change_column :product_translations, :description, :string
  end
end
