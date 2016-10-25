class AddProductTitleToMainSlides < ActiveRecord::Migration
  def up
    add_column :main_slides, :product_title, :string
    add_column :main_slides, :product_subtitle, :string

    MainSlide.initialize_globalize
    MainSlide.create_translation_table!(product_title: :string, product_subtitle: :string)
  end

  def down
    remove_column :main_slides, :product_title
    remove_column :main_slides, :product_subtitle
    MainSlide.drop_translation_table
  end
end
