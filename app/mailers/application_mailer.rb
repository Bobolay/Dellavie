class ApplicationMailer < ActionMailer::Base
  layout 'mailer'

  def new_order(r)
    @order = r
    @resource = r

    mail(
        template_name: "order",
        to: "triumf.torg.sale@gmail.com",
        from: "Dellavie <#{ActionMailer::Base.smtp_settings[:user_name]}>",
        subject: "New order"
    )
  end
end
