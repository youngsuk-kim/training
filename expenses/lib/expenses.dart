import 'package:expenses/expenses_list.dart';
import 'package:expenses/models/expenses.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Flutter Course', amount: 19.99, date: DateTime.now(), category: Category.work),
    Expense(title: 'Cinema', amount: 15.69, date: DateTime.now(), category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('The chart'),
          // Expanded: 부모 위젯의 영역보다 크다면 부모 위젯 영역과 동일하게 크기를 변경 해준다
          Expanded(child: ExpensesList(expensis: _registeredExpenses))
        ],
      ),
    );
  }
}