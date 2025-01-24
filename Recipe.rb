class Recipe
  attr_accessor :name, :ingredients, :instructions #ingredients and instructions will be lists
  def initialize(name, ingredients, instructions)
    @name = name
    @ingredients = ingredients
    @instructions = instructions
  end

  def recipe_card
    ingredients_string = ""
    @ingredients.each do |item|
      ingredients_string = ingredients_string + "\n#{item}"
    end
    instructions_string = ""
    @instructions.each_with_index do |item, index|
      instructions_string = instructions_string+ "\n#{index+1}. #{item}"
    end

    card = "\nName: #{@name}\n\nIngredients: #{ingredients_string}\n\nInstructions: #{instructions_string}
    "
    return card
  end
end
