# Recipe Box CLI - Functional Specification
## Introduction
Recipe Box CLI is a  Ruby CLI (command line interface) application that allows users to manage a collection of recipes. Users can add new recipes, and view and edit existing recipes.
The app solves the problem of keeping track of multiple recipes in one place, allowing users to quickly access and update their personal recipe collection.
## User Stories
### Basic Operations
1. As a user, I want to add a recipe with a name, ingredients, and instructions, so that I can save my favorite recipes for later use.

2. As a user, I want to view a list of all saved recipes, so that I can quickly see all the recipes I have entered.

3. As a user, I want to view the details of a specific recipe (including ingredients and instructions), so that I can refer back to it when needed.

4. As a user, I want to edit an existing recipe (name, ingredients, or instructions), so that I can update the recipe whenever necessary.

### Functional Requirements
1. **Main Menu:**
   - Display the following options:
     - Add Recipe
     - View Recipes
     - Edit Recipe
     - Exit

2. **Add Recipe:**
   - Prompt the user for the recipe name, ingredients, and instructions.
   - Save the recipe in the collection.

3. **View Recipes:**
   - Display a list of all recipes.
   - Allow the user to choose a recipe to view its details (name, ingredients, and instructions).

4. **Edit Recipe:**
   - Display a list of recipes.
   - Allow the user to select a recipe and choose which attribute to edit (name, ingredients, or instructions).
   - Make changes based on the user's input.

5. **Return to Main Menu:**
   - After performing any action (adding, viewing, or editing), the user can return to the main menu by typing 'back' or selecting the appropriate option.
### Command Flow
- User runs the CLI application, and the main menu appears.
- User selects an option (1, 2, 3, or 4) from the menu.
- If option 1 (Add Recipe) is selected:
  - The app prompts the user for the recipe's name, ingredients, and instructions.
  - Recipe is saved, and the user is returned to the main menu.
- If option 2 (View Recipes) is selected:
  - The app lists all saved recipes.
  - The user can select a recipe to view its details.
  - After viewing, the user is returned to the main menu.
- If option 3 (Edit Recipe) is selected:
  - The app lists all recipes.
  - The user selects a recipe to edit
  - The app prompts the user pick which attribute (name, ingredients, or instructions) to edit.
  - Changes are made, and the user is returned to the main menu.
- If option 4 (Exit) is selected:
  - The app ends the program.
