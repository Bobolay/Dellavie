class AddImageToFourthPageTranslations < ActiveRecord::Migration
  def change
    add_column :fourth_page_translations, :first_image, :string
    add_column :fourth_page_translations, :second_image, :string
    add_column :fourth_page_translations, :third_image, :string
  end
end
