require "./Recipe.rb"

class RecipeBoxCLI
  attr_accessor :recipes #List of Recipe Objects
  def initialize
    @recipes = []
  end

  #Main Menu - Everything runs here
  def run
    loop do
      puts "\nRecipe Box CLI"
      puts "1. Add Recipe"
      puts "2. View Recipes"
      puts "3. Edit Recipe"
      puts "4. Exit"
      print "Your choice (Number): "
        choice = gets.chomp
        if choice.to_i.between?(1, 4)
          choice = choice.to_i
          if choice == 1
            user_add_recipe
          elsif choice == 2
            view_recipes
          elsif choice == 3
            edit_recipe
          elsif choice == 4
            puts "Goodbye!"
            break
          end
        else
          puts "Invalid choice. Please try again."
        end
    end
  end

  #Add Recipes
  def user_add_recipe
    puts "Enter the recipe name: "
    name = gets.chop
    puts "Enter the ingredients (comma-separated): "
    ingredients = gets.chomp.split(",").map(&:strip) #Split makes array, but map & strip makes sure no whitespaces
    puts "Enter the instructions (comma-separated): "
    instructions = gets.chomp.split(",").map(&:strip)

    add_recipe(name, ingredients, instructions)
  end

  def add_recipe(name, ingredients, instructions)
    recipe = Recipe.new(name, ingredients, instructions)
    @recipes.push(recipe)
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
      puts "Enter the number of a recipe to view, or type 'back' to return to the main menu:"
      print "Your choice: "
      input = gets.chomp
      if input.downcase == 'back'
        break
      elsif input.to_i.between?(1, @recipes.length)
        recipe = @recipes[input.to_i - 1]
        puts recipe.recipe_card
      else
        puts "Invalid choice. Please try again."
      end
    end
  end

  #Edit Recipes
  def edit_recipe
    if @recipes.empty?
      puts "No recipes found."
      return
    end
    loop do
      puts "\nRecipes:"
      @recipes.each_with_index do |recipe, index|
        puts "#{index+1}. #{recipe.name}"
      end
      puts "Enter the number of a recipe to edit, or type 'back' to return to the main menu:"
      input = gets.chomp
      if input.downcase == 'back'
        break
      elsif input.to_i.between?(1, @recipes.length)
        recipe = @recipes[input.to_i - 1]
        puts recipe.recipe_card
        puts "Editing '#{recipe.name}'"
        puts "1. Edit Name"
        puts "2. Edit Ingredients"
        puts "3. Edit Instructions"
        puts "4. Cancel and choose different recipe"
        print "Your choice: "
        choice = gets.chomp
        if choice.to_i.between?(1, 4)
          choice = choice.to_i
          if choice == 1
            print "Enter new name: "
            recipe.name = gets.chomp
            puts "Recipe name updated!"
          elsif choice == 2
            puts "Enter new ingredients (comma-separated): "
            recipe.ingredients = gets.chomp.split(",").map(&:strip)
            puts "Ingredients updated!"
          elsif choice == 3
            puts "Enter new instructions (comma-separated): "
            recipe.instructions = gets.chomp.split(",").map(&:strip)
            puts "Instructions updated!"
          elsif choice == 4
            puts "Returning to main menu."
            #break
          end
        else
          puts "Invalid choice. Please try again."
        end
      else
        puts "Invalid choice. Please try again."
      end
    end
  end
end

#cli = RecipeBoxCLI.new
#cli.recipes = [Recipe.new("Pasta", ["Noodles", "Sauce"], ["Boil Noodles", "Mix in Sauce"])]
#cli.view_recipes
#cli.edit_recipe
#cli.run
