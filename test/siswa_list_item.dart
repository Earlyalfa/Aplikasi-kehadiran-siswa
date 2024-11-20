import 'package:flutter/material.dart';
import 'package:kehadiran_siswa/models/siswa.dart';
import '../models/siswa.dart';

class SiswaListItem extends StatelessWidget {
  final Siswa siswa;

  SiswaListItem(this.siswa);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(siswa.name),
      trailing: Checkbox(
        value: siswa.isPresent,
        onChanged: (value) {
          siswa.isPresent = value!;
        },
      ),
    );
  }
}
