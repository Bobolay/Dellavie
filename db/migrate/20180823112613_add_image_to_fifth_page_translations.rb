class AddImageToFifthPageTranslations < ActiveRecord::Migration
  def change
    add_column :fifth_page_translations, :first_image, :string
  end
end
