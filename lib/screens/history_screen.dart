import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/kehadiran_provider.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final history = Provider.of<KehadiranProvider>(context).history;

    return Scaffold(
      appBar: AppBar(title: Text('Riwayat Kehadiran')),
      body: ListView.builder(
        itemCount: history.length,
        itemBuilder: (ctx, index) {
          final record = history[index];
          return ListTile(
            title: Text('${record.date.toLocal()}'.split(' ')[0]),
            subtitle: Text('Hadir: ${record.presentCount}, Tidak Hadir: ${record.absentCount}'),
          );
        },
      ),
    );
  }
}
