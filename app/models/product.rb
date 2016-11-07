class Product < ActiveRecord::Base
  attr_accessible *attribute_names
  globalize :name, :description, :map_description
  image :image, styles: { thumb: "200x100#" }
  image :map_image, styles: { thumb: "150x150#" }

  boolean_scope :published
  scope :sort_by_sorting_position, -> { order("sorting_position asc") }

  belongs_to :main_slide

  has_cache
  def cache_instances
    [Pages.home.urls_for_locales]
  end
end
