class FifthPageTranslation < ActiveRecord::Base
	translates :main_title, :left_main_title, :left_title,
	 :left_description, :first_country    
	accepts_nested_attributes_for :translations, allow_destroy: true
end