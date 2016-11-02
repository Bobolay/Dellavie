class Text < Cms::Text
  has_cache
  def cache_instances
    [Pages.home.urls_for_locales]
  end
end