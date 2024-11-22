import 'package:flutter/material.dart';
import './kehadiran_screen.dart';
import 'riwayat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _halamanSaatIni = 0;
  final List<Widget> _halaman = [
    const KehadiranScreen(),
    const RiwayatScreen(),
  ];

  @override
  Widget build(BuildContext contxt) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Kehadiran Siswa', style: TextStyle(fontSize: 20)),
      ),
      body: _halaman[_halamanSaatIni],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _halamanSaatIni,
        onTap: (index) {
          setState(() {
            _halamanSaatIni = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Kehadiran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat',
          ),
        ],
      ),
    );
  }
}
