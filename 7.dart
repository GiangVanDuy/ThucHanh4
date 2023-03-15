void main() {
  Map<String, String> contacts = {
    'name': 'Duy',
    'phone': '123-456-7890',
  };

  Iterable<String> keysWithLengthFour = contacts.keys.where((key) => key.length == 4);

  print('Các khóa có độ dài bằng 4:');
  keysWithLengthFour.forEach((key) {
    print(key);
  });
}
