import 'dart:io';

void main() {
  // Tạo một danh sách để lưu trữ các nhiệm vụ
  List<String> tasks = [];

  // Vòng lặp vô hạn để người dùng thêm, xóa hoặc xem các nhiệm vụ
  while (true) {
    // In ra menu và yêu cầu người dùng chọn một lựa chọn
    print('\n--- Ứng dụng to-do ---');
    print('1. Thêm nhiệm vụ');
    print('2. Xóa nhiệm vụ');
    print('3. Xem danh sách nhiệm vụ');
    print('4. Thoát');
    stdout.write('Chọn một lựa chọn (1-4): ');
    var choice = int.parse(stdin.readLineSync()!);

    // Thực hiện hành động tương ứng với lựa chọn của người dùng
    switch (choice) {
      case 1:
        stdout.write('Nhập nhiệm vụ mới: ');
        var task = stdin.readLineSync()!;
        tasks.add(task);
        print('Nhiệm vụ đã được thêm.');
        break;
      case 2:
        if (tasks.isEmpty) {
          print('Không có nhiệm vụ nào để xóa.');
        } else {
          print('Danh sách các nhiệm vụ:');
          for (var i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
          stdout.write('Chọn một nhiệm vụ để xóa (1-${tasks.length}): ');
          var index = int.parse(stdin.readLineSync()!) - 1;
          tasks.removeAt(index);
          print('Nhiệm vụ đã được xóa.');
        }
        break;
      case 3:
        if (tasks.isEmpty) {
          print('Không có nhiệm vụ nào để xem.');
        } else {
          print('Danh sách các nhiệm vụ:');
          for (var i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
        break;
      case 4:
        print('Tạm biệt!');
        return;
      default:
        print('Lựa chọn không hợp lệ.');
        break;
    }
  }
}
