class Admin::CountriesController < ApplicationController
  before_action :set_country, only: [:edit, :update, :destroy]

  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
    authorize @country
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to admin_countries_path
    else
      render :new
    end
    authorize @country
  end

  def edit
  end

  def update
    if @country.update(country_params)
      redirect_to admin_countries_path
    else
      render :edit
    end
  end

  def destroy
    @country.destroy
    redirect_to admin_countries_path
  end

  private

  def set_country
    @country = Country.find(params[:id])
    authorize @country
  end

  def country_params
    params.require(:country).permit(:name, :photo)
  end
end
