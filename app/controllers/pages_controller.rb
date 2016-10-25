class PagesController < ApplicationController
  before_action :set_page_instance, except: [:index]
  caches_page :index

  def index
    set_page_metadata(:home)
    @testimonials = Testimonial.published.sort_by_sorting_position
    @properties = Property.first

    @main_slides = MainSlide.published.sort_by_sorting_position
  end

  private

  def set_page_instance
    set_page_metadata(action_name)
  end
end