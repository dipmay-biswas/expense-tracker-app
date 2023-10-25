import 'package:expense_tracker/Wigdets/expense_list/expense_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _regiteredExpenses = [
    Expense(
      amount: 500.00,
      date: DateTime.now(),
      title: 'Flutter Course',
      catagory: Catagory.work,
    ),
    Expense(
      amount: 40.50,
      date: DateTime.now(),
      title: 'Egg Role',
      catagory: Catagory.food,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Expense Charts.."),
          Expanded(
            child: ExpenseList(expenses: _regiteredExpenses),
          )
        ],
      ),
    );
  }
}
