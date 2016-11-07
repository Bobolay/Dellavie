class Property < ActiveRecord::Base
  field :phones
  field :emails
  field :facebook_url
  field :google_plus_url
  field :twitter_url

  def get_phones
    str = phones
    if str.blank?
      return []
    end

    str.split("\r\n")
  end

  def get_emails
    str = emails
    if str.blank?
      return []
    end

    str.split("\r\n")
  end

  def social_links
    Hash[[:facebook, :google_plus, :twitter].map do |k|
      url = send("#{k}_url")
      if url.blank?
        next false
      end

      [k, url]
    end.select(&:present?)]
  end

  has_cache
  def cache_instances
    [Pages.home.urls_for_locales]
  end
end
