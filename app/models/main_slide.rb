class MainSlide < ActiveRecord::Base
  attr_accessible *attribute_names
  has_many :products
  accepts_nested_attributes_for :products
  attr_accessible :products, :product_ids, :products_attributes

  boolean_scope :published
  scope :sort_by_sorting_position, -> { order("sorting_position asc") }

  image :product_image, styles: { thumb: "100x100" }
  image :background_image

  globalize :product_title, :product_subtitle

  has_cache
  def cache_instances
    [Pages.home.urls_for_locales]
  end
end
