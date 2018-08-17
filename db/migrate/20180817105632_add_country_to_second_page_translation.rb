class AddCountryToSecondPageTranslation < ActiveRecord::Migration
  def change
  	SecondPageTranslation.add_translation_fields! first_country: :string,
  	 second_country: :string, third_country: :string
  end
end
