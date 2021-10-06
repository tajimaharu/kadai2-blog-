class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "komiwork361@gmail.com", subject: "ブログ投稿の確認メール"
  end
end
