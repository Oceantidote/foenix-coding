class ContactJob < ApplicationJob
  queue_as :default
  include ApplicationHelper
  def perform(email, first_name, last_name, company, message, country, sms)
    new_contact(email, first_name, last_name, company, message, country, sms)
    # Do something later
  end
end
