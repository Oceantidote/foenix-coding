class ContactJob < ApplicationJob
  queue_as :default
  include ApplicationHelper
  def perform(email, first_name, last_name, company, message, country, sms)
    new_contact(email, first_name, last_name, company, message, country, sms)
    # Do something later
    ContactMailer.with(email: email, first_name: first_name, last_name: last_name, company: company, message: message, country: country, sms: sms).new_contact.deliver_now
  end
end
