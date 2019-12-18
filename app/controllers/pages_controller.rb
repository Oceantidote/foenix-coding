class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  include ApplicationHelper

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

  def subscribe
    session[:return_to] ||= request.referer
    new_subscribe(params[:email])
    flash[:notice] = "Thanks for signing up to our emailing list."
    redirect_to session.delete(:return_to)
  end

  def contact
    raise
  end

  def send_email
  end

end
