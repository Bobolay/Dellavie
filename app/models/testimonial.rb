class Testimonial < ActiveRecord::Base
  attr_accessible *attribute_names

  globalize :name, :position, :description

  boolean_scope :published
  scope :sort_by_sorting_position, -> { order("sorting_position asc") }

  image :image, styles: { thumb: "100x100#", small: "500x500#" }

  has_cache
  def cache_instances
    [Pages.home]
  end
end
