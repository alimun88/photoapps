class ContactsController < ApplicationController
    skip_before_action :authenticate_user!
    
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Message sent Susscessfully"
      redirect_to new_contact_path
    else
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
    end
  end

  private
  
  def contact_params
   params.require(:contact).permit(:name, :email, :comments)
  end
end