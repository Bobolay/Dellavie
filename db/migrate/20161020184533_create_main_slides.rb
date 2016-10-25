class CreateMainSlides < ActiveRecord::Migration
  def change
    create_table :main_slides do |t|
      t.integer :sorting_position
      t.boolean :published
      t.attachment :product_image

      t.timestamps null: false
    end
  end
end
