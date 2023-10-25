import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Catagory { food, travel, leisure, work }

class Expense {
  Expense({
    required this.amount,
    required this.date,
    required this.title,
    required this.catagory,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Catagory catagory;
}