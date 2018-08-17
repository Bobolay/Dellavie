class AddCountryToFourthPageTranslation < ActiveRecord::Migration
  def change
  	FourthPageTranslation.add_translation_fields! first_country: :string,
  	 second_country: :string, third_country: :string
  end
end
