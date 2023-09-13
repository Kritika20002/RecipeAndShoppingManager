import 'dart:io';
import 'main.dart';

class ShoppingManager {

  String itemName = ' ';
  String quantity = ' ';
  Map<String, String> shoppingList = {};

  void choice() {
    try {
      int choiceAgain = int.parse(stdin.readLineSync()!);
      switch(choiceAgain) {
        case 1:
          insert();
          break;
        case 2:
          display();
          break;
        default:
          stdout.write("Unknown Integer.Terminating program...");
          break;
      }
    }
    catch (choiceAgain) {
      stdout.write("Unknown Integer. Terminating Program...");
      exit(0);
    }
  }

  void insert() {
    stdout.write("Enter the name of the item you want to insert : \n");
    String itemName = stdin.readLineSync()!;
    stdout.write("Enter the quantity you want to insert : \n");
    String quantity = stdin.readLineSync()!;
    shoppingList[itemName] = quantity;
    stdout.write("Do you want to insert more items to the list?\n Press 1 to insert more elements and 2 to display the shopping list\n 0 if you want to go back or any other integer to terminate the program\n");
    try {
      int choice2 = int.parse(stdin.readLineSync()!);
      switch(choice2) {
        case 1:
        insert();
        break;
        case 2 :
        display();
        break;
        case 0:
        main();
        break;
        default:
        exit(0);
      }
    }
    catch(choice2) {
      stdout.write("Unknown Integer. Terminating Program...");
    }
  }

  void display() {
    stdout.write("Shopping List - \n");
    for (String i in shoppingList.keys) {
      stdout.write("$i : ${shoppingList[i]} \n");
    }
    stdout.write(
        "Press 1 to insert more elements, 0 to go back or any other integer to terminate\n");
    try {
      int choice3 = int.parse(stdin.readLineSync()!);
      switch(choice3) {
        case 1:
        insert();
        break;
        case 0:
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