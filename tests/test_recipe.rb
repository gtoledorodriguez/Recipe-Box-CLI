require 'minitest/autorun'
require './Recipe'

# test_recipe.rb
class TestRecipe < Minitest::Test
  def setup
    @recipe = Recipe.new("Pasta", ["Noodles", "Sauce"], ["Boil Noodles", "Mix in Sauce"])
  end

  def test_recipe_name
    assert_equal "Pasta", @recipe.name
  end

  def test_recipe_ingredients
    assert_equal ["Noodles", "Sauce"], @recipe.ingredients
  end

  def test_recipe_instructions
    assert_equal ["Boil Noodles", "Mix in Sauce"], @recipe.instructions
  end

  def test_recipe_card_format
    
    expected_card = "\nName: Pasta\n\nIngredients: \nNoodles\nSauce\n\nInstructions: \n1. Boil Noodles\n2. Mix in Sauce
    "
    assert_equal expected_card, @recipe.recipe_card
  end
end
