class CountriesController < ApplicationController
  def new
    @country = Country.new
    authorize @country
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to root_path
    else
      render :new
    end
    authorize @country
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def country_params
    params.require(:country).permit(:name, :flag)
  end
end
