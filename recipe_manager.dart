import "dart:io";
import "main.dart";

class RecipeManager {
  String recipeName = '';
  String description =' ';
  Map<String, String> recipes ={};

  void choice() {
    try {
      int choiceAgain = int.parse(stdin.readLineSync()!);
      switch(choiceAgain) {
        case 1 :
          insert();
          break;
        case 2 :
          display();
          break;
        default:
          stdout.write("Unknown choice. Terminating Program...");
          break;
      }
    }
    catch (choiceAgain) {
      stdout.write("Unknown choice. Terminating Program...");
      exit(0);
    }
  }

  void insert() {
    stdout.write("Please Enter the Name of the recipe below: \n");
    recipeName = stdin.readLineSync()!;
    stdout.write("Please Enter the Ingredients and Instructions for the recipe below : \n");
    description = stdin.readLineSync()!;
    recipes[recipeName] = description;
    stdout.write("Your Recipe is inserted! \n Press 2 if you want to display the recipe list, 1 if you want to insert another recipe, 0 if you want to go back and \n any other integer to terminate the program \n");
    try {
      int choice2 = int.parse(stdin.readLineSync()!);
      switch(choice2) {
        case 2 :
          display();
          break;
        case 1 :
          insert();
          break;
        case 0 :
        main();
        break;
        default:
        exit(0);
      }
      }
    catch(choice2) {
      stdout.write("Please only enter an integer! \n Terminating Program...");
    }
  }

  void display() {
    stdout.write("Recipes in the system so far- \n");
    for(String i in recipes.keys) {
      stdout.write("$i : ${recipes[i]}\n");
    }
    stdout.write("Press 1 if you want to insert a recipe, 0 if you want to go back \n or any where else to terminate the program ! \n");
    try {
      int choice3 = int.parse(stdin.readLineSync()!);
      switch(choice3) {
        case 1 :
        insert();
        break;
        case 0 :
        main();
        break;
        default:
        exit(0);
      }
    }
    catch(choice3) {
      stdout.write("Unknown Integer. Terminating Program...");
    }
  }
}