import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4(); // calling constructor and passing paramethers

  final String
      id; // in order to build unique ID whenever object is created we are using UUID third party package
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
