class CocktailsController < ApplicationController

  before_action :find_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @doses = @cocktail.doses
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
