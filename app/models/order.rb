class Order < ActiveRecord::Base
  attr_accessible *attribute_names

  def user_position
    i = self['user_position'].to_i rescue nil
    if i.nil?
      return nil
    end

    Cms.t("home.contact-form.user_position.option-#{i}")
  end
end
