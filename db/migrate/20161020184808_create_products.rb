class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.boolean :published
      t.integer :sorting_position
      t.string :name
      t.attachment :image
      t.string :description
      t.attachment :map_image
      t.text :map_description
      t.integer :main_slide_id

      t.timestamps null: false
    end

    Product.create_translation_table :name, :description, :map_description
  end

  def down
    Product.drop_translation_table

    drop_table :products
  end
end
