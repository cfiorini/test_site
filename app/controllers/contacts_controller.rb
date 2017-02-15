class ContactsController < ApplicationController

  def create
    @params = contact_params
    ContactMailer.contact_email(@params).deliver
  end

  private

  def contact_params
    params.permit(:contact_name, :contact_phone, :contact_email,
                  :contact_message)
  end

end
