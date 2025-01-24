class Recipe
  attr_accessor :name, :ingredients, :instructions #ingredients and instructions will be lists
  def initialize(name, ingredients, instructions)
    @name = name
    @ingredients = ingredients
    @instructions = instructions
  end

  def recipe_card
    card = "
    Name: #{@name}
    \nIngredients: #{@ingredients.join(', ')}
    \nInstructions: #{@instructions.join(', ')}
    "
    return card
  end
end
