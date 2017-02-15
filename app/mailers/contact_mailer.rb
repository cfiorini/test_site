class ContactMailer < ActionMailer::Base

  default to: "info@voxtours.com"

  def contact_email(params)
    @params = params

    mail from: "info@voxtours.com", subject: 'New contact from Vox Website'
  end
end
