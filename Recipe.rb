class Recipe
  attr_accessor :recipe_name, :ingredients, :instructions #ingredients and instructions will be lists
  def initialize(recipe_name, ingredients, instructions)
    @recipe_name = recipe_name
    @ingredients = ingredients
    @instructions = instructions
  end
end
