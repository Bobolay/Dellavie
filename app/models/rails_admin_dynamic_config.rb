def host?(*hosts)


  if hosts.blank? || !defined?(REQUEST_HOST)
    return true
  end

  hosts.include? REQUEST_HOST
end

module RailsAdminDynamicConfig
  class << self
    def configure_rails_admin(initial = true)
      RailsAdmin.config do |config|

        ### Popular gems integration

        ## == Devise ==
        config.authenticate_with do
          warden.authenticate! scope: :user
        end
        config.current_user_method(&:current_user)

        ## == Cancan ==
        # config.authorize_with :cancan

        ## == Pundit ==
        # config.authorize_with :pundit

        ## == PaperTrail ==
        # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

        ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration



        if initial
          config.actions do
            dashboard                     # mandatory
            index                         # mandatory
            new
            export
            bulk_delete
            show
            edit
            delete
            show_in_app
            nestable do
              only []
            end
            root_clear_cache do

            end

            ## With an audit adapter, you can add:
            # history_index
            # history_show
          end
        end

        ## Cms models
        config.include_models Cms::MetaTags, Cms::Page

        config.model_translation Cms::Page do

        end

        config.model Cms::MetaTags do
          visible false
          field :translations, :globalize_tabs
        end

        config.model_translation Cms::MetaTags do
          field :locale, :hidden
          field :title
          field :keywords
          field :description
        end

        config.include_models Cms::Text

        config.model Cms::Text do
          edit do
            field :key
            field :translations, :globalize_tabs
          end

          list do
            field :key
            field :translations do
              pretty_value do
                o = @bindings[:object]
                translation_locales = Hash[I18n.available_locales.map{|locale| [locale, (t = o.translations_by_locale[locale]) && t.content.present?] }]
                translation_locales.map{|locale, translated| color = translated ? 'green' : 'red'; "<span style='color: #{color}'>#{locale}</span>" }.join(", ").html_safe
                # o.translations_by_locale
                # if o.promotional_price?
                #   "<strike style='color: gray'>#{original_price}</strike><font color='orange' style='margin-left: 5px'>#{o.promotional_price}</font>".html_safe
                # else
                #   original_price
                # end
              end
            end
          end
        end

        config.model_translation Cms::Text do
          field :locale, :hidden
          field :content
        end

        config.include_models Testimonial
        config.model Testimonial do
          field :published
          field :image
          field :translations, :globalize_tabs
        end

        config.model_translation Testimonial do
          field :locale, :hidden
          field :name
          field :position
          field :description
        end

        config.include_models Property
        config.model Property do
          field :phones, :text do
            help "each one in new line"
          end
          field :emails, :text do
            help "each one in new line"
          end
          field :facebook_url
          field :google_plus_url
          field :twitter_url
        end

        config.include_models Product
        config.model Product do
          # edit do
          #   field :main_slide
          #   field :published
          #   field :map_image
          #   field :image
          #   field :translations, :globalize_tabs
          # end

          nested do
            field :published
            field :map_image
            field :image
            field :translations, :globalize_tabs
          end

        end

        config.model_translation Product do
          field :locale, :hidden
          field :map_description
          field :name
          field :description
        end


        config.include_models MainSlide
        config.model MainSlide do
          field :published
          #field :background_image
          field :product_image
          field :products
          field :translations, :globalize_tabs
        end

        config.model_translation MainSlide do
          field :locale, :hidden
          field :product_title
          field :product_subtitle
        end

        config.include_models Order, FormConfigs::Order
        config.model FormConfigs::Order do
          field :email_receivers, :text
        end

        config.model Order do
          group :main_info do
            field :user_position
            field :name
            field :email
            field :phone
            field :message
          end

          group :additional_info do
            field :locale
            field  :referrer
            field :session_id
          end

        end
      end
    end
  end
end