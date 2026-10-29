// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:kampus_ku/app.dart';

void main() {
  testWidgets('beranda menampilkan jadwal dan ruang kuliah', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const KampusKuApp());

    expect(find.text('KampusKu'), findsOneWidget);
    expect(find.textContaining('Waktu: 08:00-10:00'), findsNWidgets(3));
    expect(find.textContaining('Ruang: A101'), findsOneWidget);
    expect(find.textContaining('Ruang: B202'), findsOneWidget);
    expect(find.text('Algoritma dan Struktur Data'), findsOneWidget);
    expect(find.textContaining('Ruang: A102'), findsOneWidget);
    expect(find.text('Jaringan Komputer'), findsOneWidget);
    expect(find.textContaining('Ruang: B203'), findsOneWidget);
    expect(find.text('Sistem Operasi'), findsOneWidget);
    expect(find.textContaining('Ruang: Online'), findsNWidgets(2));
  });
}
