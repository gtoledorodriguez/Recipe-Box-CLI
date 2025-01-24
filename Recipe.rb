class Recipe
  attr_accessor :name, :ingredients, :instructions #ingredients and instructions will be lists
  def initialize(name, ingredients, instructions)
    @name = name
    @ingredients = ingredients
    @instructions = instructions
  end
end
