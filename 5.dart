import 'dart:io';
void main() {
  List<String> friendNames = [];

  friendNames.add('Alice');
  friendNames.add('Bob');
  friendNames.add('Charlie');
  friendNames.add('David');
  friendNames.add('Emma');
  friendNames.add('Frank');
  friendNames.add('George');

  String nameStartingWithA =
      friendNames.where((name) => name.startsWith('A')).first;

  print('Tên bạn bè bắt đầu bằng chữ cái "a": $nameStartingWithA');
}
