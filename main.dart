import "dart:io";
import 'recipe_manager.dart';
import 'shopping_manager.dart';

void main() {

    final RecipeManager recipeManager = RecipeManager();
    final ShoppingManager shoppingManager = ShoppingManager();

    stdout.write(
        "Welcome! Please Press 1 if you want to access Recipe Manager \n or 2 if you want to access Shopping Manager: \n");

    while (true) {
        try {
            int choice = int.parse(stdin.readLineSync()!);
            if (choice == 1) {
                stdout.write(
                    "Do you want to insert a recipe or Display the existing recipes? \n Press 1 to insert recipe and 2 to display recipe:\n");
                recipeManager.choice();
            }
            else if (choice == 2) {
                stdout.write(
                    "Do you want to insert items to your shopping list or Display the already existing shopping list?\n Press 1 if you want to insert items, 2 if you want to display the list \n or anywhere else to terminate the program.\n");
                shoppingManager.choice();
            }
            else{
                stdout.write("Unknown Integer. Terminating Program...");
                break;
            }
        }
        catch (choice) {
            stdout.write("Unknown Integer. Terminating Program... \n");
            break;
        }
    }
}