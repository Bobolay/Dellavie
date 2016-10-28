class Text < Cms::Text
  has_cache
  def cache_instances
    [Pages.home]
  end
end