class PagesController < ApplicationController
  before_action :set_page_instance, except: [:index]
  caches_page :index

  def index
    set_page_metadata(:home)
    @testimonials = Testimonial.published.sort_by_sorting_position


    @main_slides = MainSlide.published.sort_by_sorting_position

    @first_page = FirstPageTranslation.first_or_initialize
    @second_page = SecondPageTranslation.first_or_initialize
    @third_page = ThirdPageTranslation.first_or_initialize
    @fourth_page = FourthPageTranslation.first_or_initialize
    @fifth_page = FifthPageTranslation.first_or_initialize
  end

  private

  def set_page_instance
    set_page_metadata(action_name)
  end
end