# test_cli_cli.rb
require 'minitest/autorun'
require './RecipeBoxCLI'
require './Recipe'

class TestRecipeBoxCLI < Minitest::Test
  def setup
    @cli = RecipeBoxCLI.new
    @cli.add_recipe("Pasta", ["Noodles", "Sauce"], ["Boil Noodles", "Mix in Sauce"])
    @cli.add_recipe("Salad", ["Lettuce", "Tomatoes"], ["Chop Lettuce", "Slice Tomatoes", "Toss together"])
  end

  def test_add_recipe
    @cli.add_recipe("Soup", ["Water", "Carrots"], ["Boil Water", "Add Carrots", "Simmer"])
    assert_equal 3, @cli.recipes.size, "Recipe not added successfully"
  end

  def test_view_recipes
    expected_card = "\n1. Pasta\n2. Salad"
    assert_equal expected_card, @cli.view_recipes
  end
end
