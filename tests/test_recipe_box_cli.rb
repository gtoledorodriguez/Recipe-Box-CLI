# test_recipe_box_cli.rb
require 'minitest/autorun'
require './RecipeBoxCLI'
require './Recipe'

class TestRecipeBoxCLI < Minitest::Test
  def setup
    @cli = RecipeBoxCLI.new
    @cli.add_recipe("Pasta", ["Noodles", "Sauce"], ["Boil Noodles", "Mix in Sauce"])
  end

  def test_add_recipe
    assert_equal 1, @cli.recipes.length
  end

end
