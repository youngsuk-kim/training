import 'package:expenses/models/expenses.dart';
import 'package:flutter/cupertino.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expensis});

  final List<Expense> expensis;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensis.length,
      itemBuilder: (ctx, index) => Text(expensis[index].title),
    );
  }
}
