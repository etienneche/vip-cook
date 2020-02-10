class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    @ingredient.save
  end

  def new
    @ingredients = Ingredient.new
  end

  def edit

  end

  def update
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
