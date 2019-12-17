class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def about
  end

  def inks_and_consumables
  end

  def distributor
    @countries = Country.all
  end

  def cost_of_ownership
  end

  def fxone_remote
  end

  def fxone_standard
  end

  def fxone_plus
  end

  def software
  end

  def faq
  end

  def send_email
  end
end
