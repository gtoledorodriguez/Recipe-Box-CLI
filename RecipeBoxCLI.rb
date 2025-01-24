require "./Recipe.rb"

class RecipeBoxCLI
  attr_accessor :recipes #List of Recipe Objects
  def initialize
    @recipes = []
  end

  #Main Menu - Everything runs here
  #Add Recipes
  def add_recipe
    puts "Enter the recipe name: "
    name = gets.chop
    puts "Enter the ingredients (comma-separated): "
    ingredients = gets.chomp.split(",").map(&:strip) #Split makes array, but map & strip makes sure no whitespaces
    puts "Enter the instructions (comma-separated): "
    instructions = gets.chomp.split(",").map(&:strip)

    @recipes.push(Recipe.new(name, ingredients, instructions))
    puts "Recipe '#{name}' added successfully!"
  end

  #View Recipes
  def view_recipes
    if @recipes.empty?
      puts "No recipes found."
      return
    end

    loop do
      puts "\nRecipes:"
      @recipes.each_with_index do |recipe, index|
        puts "#{index+1}. #{recipe.name}"
      end
      puts "Enter the number of a recipe to view its details, or type 'back' to return to the main menu:"
      print "Your choice: "
      input = gets.chomp
      
    end
  end

  #Edit Recipes
  def edit_recipe
  end
end

cli = RecipeBoxCLI.new
cli.view_recipes
cli.add_recipe
cli.view_recipes
