import 'package:flutter/material.dart';

import '../models/mata_kuliah.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  static const _jadwal = [
    MataKuliah(
      kode: 'IF-024',
      nama: 'Pemrograman Mobile II',
      sks: 3,
      hari: 'Senin',
      waktu: '08:00-10:00',
      ruang: 'A101',
    ),
    MataKuliah(
      kode: 'IF-021',
      nama: 'Basis Data',
      sks: 3,
      hari: 'Selasa',
      waktu: '10:00-12:00',
      ruang: 'B202',
    ),
    MataKuliah(
      kode: 'IF-023',
      nama: 'B.Indo',
      sks: 2,
      hari: 'rabu',
      waktu: '11:00-15:00',
      ruang: 'Online',
    ),
    MataKuliah(
      kode: 'IF-025',
      nama: 'Algoritma dan Struktur Data',
      sks: 3,
      hari: 'Kamis',
      waktu: '08:00-10:00',
      ruang: 'A102',
    ),
    MataKuliah(
      kode: 'IF-026',
      nama: 'Jaringan Komputer',
      sks: 3,
      hari: 'Kamis',
      waktu: '10:00-12:00',
      ruang: 'B203',
    ),
    MataKuliah(
      kode: 'IF-027',
      nama: 'Sistem Operasi',
      sks: 3,
      hari: 'Jumat',
      waktu: '08:00-10:00',
      ruang: 'Online',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KampusKu')),
      body: ListView(
        children: [
          for (final mk in _jadwal)
            ListTile(
              leading: const Icon(Icons.class_),
              title: Text(mk.nama),
              isThreeLine: true,
              subtitle: Text(
                '${mk.kode} · ${mk.hari} · ${mk.sks} SKS\n'
                'Waktu: ${mk.waktu}\n'
                'Ruang: ${mk.ruang}',
              ),
            ),
        ],
      ),
    );
  }
}