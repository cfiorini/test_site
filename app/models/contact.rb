# class Contact

#   include ActiveModel::Model
#   include ActiveModel::Conversion
#   include ActiveModel::Validations

#   attr_accessor :contact_name, :contact_phone, :contact_email,
#                 :contact_message

#   validates :contact_name, :contact_email, :contact_message, presence: true

#   #after_create :send_email

#   private
#   def send_email
#       ContactMailer.contact_email(self).deliver
#   end
# end
