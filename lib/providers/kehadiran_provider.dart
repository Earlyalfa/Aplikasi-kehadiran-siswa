import 'package:flutter/foundation.dart';
import '../models/siswa.dart';

class KehadiranProvider with ChangeNotifier {
  final List<Siswa> _daftarSiswa = [
    Siswa(nama: 'Ali'),
    Siswa(nama: 'Budi'),
    Siswa(nama: 'Citra'),
  ];

  final List<Map<String, dynamic>> _riwayat = [];

  List<Siswa> get daftarSiswa => _daftarSiswa;

  List<Map<String, dynamic>> get riwayat => _riwayat;

  void simpanKehadiran() {
    final jumlahHadir =
      _daftarSiswa.where((siswa) => siswa.hadir).length;
    final jumlahTidakHadir = _daftarSiswa.length - jumlahHadir;

    _riwayat.insert(0, {
      'tanggal': DateTime.now(),
      'hadir': jumlahHadir,
      'tidakHadir': jumlahTidakHadir,
    });

    for (var siswa in _daftarSiswa) {
      siswa.hadir = false;
    }

    notifyListeners();
  }
}
