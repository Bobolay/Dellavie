class AddImageToSecondPageTranslations < ActiveRecord::Migration
  def change
    add_column :second_page_translations, :first_image, :string
    add_column :second_page_translations, :second_image, :string
    add_column :second_page_translations, :third_image, :string
  end
end
