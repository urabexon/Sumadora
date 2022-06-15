class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: ENV["GMAIL_USERNAME"],
         subject: "お問い合わせ"
  end
end
