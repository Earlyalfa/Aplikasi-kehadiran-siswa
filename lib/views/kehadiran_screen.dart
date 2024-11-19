import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/kehadiran_provider.dart';

class KehadiranScreen extends StatelessWidget {
  const KehadiranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<KehadiranScreen>(context);
    final daftarSiswa = provider.daftarSiswa;

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: daftarSiswa.length,
            itemBuilder: (context, index) {
              final siswa = daftarSiswa[index];
              return ListTile(
                title: Text(siswa.nama),
                trailing: Checkbox(
                  value: siswa.hadir,
                  onChanged: (value) {
                    siswa.hadir = value!;
                    provider.notifyListeners();
                  },
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: daftarSiswa.isEmpty
                ? null
                : () {
                    provider.simpanKehadiran();
                  },
            child: const Text('Simpan Kehadiran'),
          ),
        ),
      ],
    );
  }
}