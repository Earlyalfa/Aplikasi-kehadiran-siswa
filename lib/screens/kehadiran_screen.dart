import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/kehadiran_provider.dart';
import '../models/siswa.dart';

class KehadiranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<KehadiranProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Kehadiran Siswa')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: provider.students.length,
              itemBuilder: (ctx, index) {
                Siswa siswa = provider.students[index];
                return ListTile(
                  title: Text(siswa.name),
                  trailing: Checkbox(
                    value: siswa.isPresent,
                    onChanged: (value) {
                      siswa.isPresent = value!;
                      // Tidak perlu notifyListeners langsung, karena daftar dipegang oleh provider.
                    },
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: provider.students.isEmpty ? null : provider.saveKehadiran,
            child: const Text('Simpan Kehadiran'),
          ),
        ],
      ),
    );
  }
}

      