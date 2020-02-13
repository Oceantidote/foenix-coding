class ContactMailer < ApplicationMailer
  def new_contact
    @email = params[:email]
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @company = params[:company]
    @message = params[:message]
    @country = params[:country]
    @sms = params[:sms]
    mail(to: 'sales@foenixcoding.com', subject: 'New contact')
  end
end
