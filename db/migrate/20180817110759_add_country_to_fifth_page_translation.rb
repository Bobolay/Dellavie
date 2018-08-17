class AddCountryToFifthPageTranslation < ActiveRecord::Migration
  def change
  	FifthPageTranslation.add_translation_fields! first_country: :string  	 
  end
end
