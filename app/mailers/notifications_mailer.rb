#encoding: utf-8
class NotificationsMailer < ActionMailer::Base

  default :from => 'support@voroninstudio.eu'
  default :to => 'i@education-abroad.com.ua'
  default :cc => 'voronin.nick@gmail.com'
  default :reply_to => ''

  def new_contact(contact)
    @contact = contact
    mail(:subject => "#Новое письмо с Вашего сайта (http://education-abroad.com.ua/)", :from => contact.email, :reply_to => contact.email)
  end
end
