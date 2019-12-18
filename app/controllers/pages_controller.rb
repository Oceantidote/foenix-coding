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
    if params[:email].match(/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
      new_subscribe(params[:email])
      flash[:notice] = "Thanks for signing up to our emailing list."
      redirect_to session.delete(:return_to)
    else
      flash[:alert] = "Please enter a valid email address"
      redirect_to session.delete(:return_to)
    end
  end

  def contact
  end

  def send_email
    session[:return_to] ||= request.referer
    if params[:send_email][:email].match(/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
      new_contact(params[:send_email][:email], params[:send_email][:first_name], params[:send_email][:last_name], params[:send_email][:company], params[:send_email][:message], params[:send_email][:country])
      flash[:notice] = "Thanks for getting in touch, we will try to get back to you as soon as possible."
      redirect_to session.delete(:return_to)
    else
      flash[:alert] = "Please enter a valid email address"
      redirect_to session.delete(:return_to)
    end
  end

  def create_contact
    session[:return_to] ||= request.referer
    if params[:email].match(/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
      new_contact(params[:email], params[:name].split(" ").first, params[:name].split(" ").last, params[:company], params[:message], params[:country], params[:phone])
      flash[:notice] = "Thanks for getting in touch, we will try to get back to you as soon as possible."
      redirect_to session.delete(:return_to)
    else
      flash[:alert] = "Please enter a valid email address"
      redirect_to session.delete(:return_to)
    end
  end

end
