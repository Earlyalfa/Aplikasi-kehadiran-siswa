import 'package:flutter/material.dart';
import 'package:kehadiran_siswa/providers/kehadiran_provider.dart';
import 'package:provider/provider.dart';
import './providers/kehadiran_provider.dart';
import './views/home_screen.dart';

void main() => runApp(const AplikasiKehadiran());

class AplikasiKehadiran extends StatelessWidget {
  const AplikasiKehadiran({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => KehadiranProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

