class NewsletterJob < ApplicationJob
  queue_as :default
  include ApplicationHelper

  def perform(email)
    new_subscribe(email)
  end
end
