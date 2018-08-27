class PageTwo < ActiveRecord::Base
	translates :head_title, :head_main_title,
	:main_title, :title, :description
	accepts_nested_attributes_for :translations, allow_destroy: true	

	has_cache
  def cache_instances
    [Pages.home.urls_for_locales]
  end
end