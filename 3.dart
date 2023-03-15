import 'dart:io';

void main() {
  List<double> expenses = [];

  stdout.write("Nhập số lượng khoản chi phí: ");
  int count = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= count; i++) {
    stdout.write("Nhập số tiền cho khoản $i: ");
    double expense = double.parse(stdin.readLineSync()!);
    expenses.add(expense);
  }
  double total = expenses.reduce((a, b) => a + b);
  print("Tổng số tiền của các khoản chi phí là: $total");
}
