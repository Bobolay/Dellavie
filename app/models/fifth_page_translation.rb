class FifthPageTranslation < ActiveRecord::Base
	translates :main_title, :left_main_title, :left_title,
	 :left_description, :first_country    
	accepts_nested_attributes_for :translations, allow_destroy: true
	mount_uploader :first_image

	has_cache
  def cache_instances
    [Pages.home.urls_for_locales]
  end
end