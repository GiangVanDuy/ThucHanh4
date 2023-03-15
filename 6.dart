void main() {
  Map<String, dynamic> person = {
    'name': 'Duy',
    'address': 'Dong Hai , Hai An, Hai Phong',
    'age': 21,
    'country': 'USA'
  };

  person['country'] = 'VietNam';

  print('Thông tin người:');
  person.forEach((key, value) {
    print('$key: $value');
  });
}
