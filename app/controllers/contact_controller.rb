#encoding: utf-8
class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      NotificationsMailer.new_contact(@contact).deliver
      redirect_to(contact_path)
      flash[:notice] = 'Ваше повідомлення було успішно відправлено.'
    else
      flash[:notice] = 'Please fill all fields.'
      redirect_to(root_path)
    end
  end
end
