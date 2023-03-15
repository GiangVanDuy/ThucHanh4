void main() {
  List<String> days = [];

  days.add('Thứ hai');
  days.add('Thứ ba');
  days.add('Thứ tư');
  days.add('Thứ năm');
  days.add('Thứ sáu');
  days.add('Thứ bảy');
  days.add('Chủ nhật');

  print('Các ngày trong tuần là:');
  for (String day in days) {
    print(day);
  }
}
