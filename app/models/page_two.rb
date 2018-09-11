class PageTwo < ActiveRecord::Base
	translates :head_title, :head_main_title,
	:main_title, :title, :description
	accepts_nested_attributes_for :translations, allow_destroy: true	

	has_cache do
	  pages :home
    end	
end