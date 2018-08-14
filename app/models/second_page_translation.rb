class SecondPageTranslation < ActiveRecord::Base
	translates :main_title, :left_main_title, :left_title, :left_description,
     :middle_main_title, :middle_title, :middle_description,
	 :right_main_title, :right_title, :right_description
	accepts_nested_attributes_for :translations, allow_destroy: true
end