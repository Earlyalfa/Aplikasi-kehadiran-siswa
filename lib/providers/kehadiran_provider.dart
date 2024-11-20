import 'package:flutter/foundation.dart';
import '../models/siswa.dart';
import '../models/kehadiran_siswa.dart';

class KehadiranProvider with ChangeNotifier {
  final List<Siswa> _students = [
    Siswa(name: 'Ali'),
    Siswa(name: 'Budi'),
    Siswa(name: 'Citra'),
  ];

  final List<KehadiranSiswa> _history = [];

  List<Siswa> get students => _students;

  List<KehadiranSiswa> get history => _history;

  void saveKehadiran() {
    int presentCount = _students.where((s) => s.isPresent).length;
    int absentCount = _students.length - presentCount;

    _history.insert(
      0,
      KehadiranSiswa(
        date: DateTime.now(),
        presentCount: presentCount,
        absentCount: absentCount,
      ),
    );

    // Reset all checkboxes
    for (var student in _students) {
      student.isPresent = false;
    }

    notifyListeners();
  }
}
