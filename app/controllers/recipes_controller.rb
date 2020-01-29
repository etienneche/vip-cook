class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.save
  end

  def new
    @recipes = Recipe.new
  end

  def edit
    @recipes = Recipe.find(params[:id])
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipes = Recipe.find(params[:id])
    @recipe.update(params[:recipe])

    redirect_to recipes_path(@recipe)
  end

  def destroy
    @recipes = Recipe.find(params[:id])
    @recipes.destroy

    redirect_to recipes_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
