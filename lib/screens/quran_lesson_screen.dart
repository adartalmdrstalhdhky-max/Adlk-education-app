import 'package:flutter/material.dart';

class QuranLessonScreen extends StatelessWidget {
final String surahName;
QuranLessonScreen({this.surahName = "سورة الفاتحة"});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text(surahName)),
body: Container(
padding: EdgeInsets.all(20),
child: Center(
child: Text(
'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ',
style: TextStyle(fontSize: 28, fontFamily: 'Traditional Arabic', fontWeight: FontWeight.bold),
textAlign: TextAlign.center,
),
),
),
);
}
}
