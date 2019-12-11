class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def about
  end

  def inks_and_consumables
  end

  def distributor
  end

  def faq
  end

  def send_email
  end
end
