class AddCountryToThirdPageTranslation < ActiveRecord::Migration
  def change
  	ThirdPageTranslation.add_translation_fields! first_country: :string,
  	 second_country: :string, third_country: :string
  end
end
