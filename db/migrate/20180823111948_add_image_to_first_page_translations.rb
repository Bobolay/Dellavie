class AddImageToFirstPageTranslations < ActiveRecord::Migration
  def change
    add_column :first_page_translations, :first_image, :string
    add_column :first_page_translations, :second_image, :string
    add_column :first_page_translations, :third_image, :string
  end
end
