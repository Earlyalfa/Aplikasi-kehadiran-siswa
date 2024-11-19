import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kehadiran_siswa/provider/kehadiran_provider.dart';
import 'package:kehadiran_siswa/views/home_screen.dart';

void main() => runApp(const AplikasiKehadiranSiswa());

class AplikasiKehadiranSiswa extends StatelessWidget {
  const AplikasiKehadiranSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => KehadiranProvider(),
      child: MaterialApp(
        title: 'Aplikasi Kehadiran Siswa',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
