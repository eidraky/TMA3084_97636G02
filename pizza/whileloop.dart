import 'dart:io';

void main() {
  bool ordering = true;

  while (ordering) {
    print("==================================================");
    print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

    print("Please enter your pizza size (small, medium, or large):");
    String? pizza_size = stdin.readLineSync();

    int price = 0;

    switch (pizza_size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print('Invalid pizza size entered. Please try again.');
        print('');
        continue;
    }

    print("How many pizzas do you want of $pizza_size?");
    int quantity = int.parse(stdin.readLineSync()!);

    int total = price * quantity;
    print("Your Total Payment is: \$$total");
    print("==================================================");

    print("Do you want to order again? (yes/no):");
    String? response = stdin.readLineSync();
    if (response != 'yes') {
      ordering = false;
      print("Thank you for ordering!");
    }
    print('');
  }
}
