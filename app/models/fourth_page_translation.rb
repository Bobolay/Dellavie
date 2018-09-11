class FourthPageTranslation < ActiveRecord::Base
	translates :main_title, :left_main_title, :left_title, :left_description,
     :middle_main_title, :middle_title, :middle_description,
	 :right_main_title, :right_title, :right_description, :first_country,
	 :second_country, :third_country
	accepts_nested_attributes_for :translations, allow_destroy: true
	mount_uploader :first_image
	mount_uploader :second_image
	mount_uploader :third_image

	has_cache do
	  pages :home
    end	
end