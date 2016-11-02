class Pages::Home < Cms::Page
  def url(locale = I18n.locale)
    "/#{locale}"
  end

  def urls_for_locales(locales = Cms.config.provided_locales)
    locales.map{|locale| url(locale) }
  end
end