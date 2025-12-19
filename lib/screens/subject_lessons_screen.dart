// subjects_screen.dart
import 'package:flutter/material.dart';
class SubjectsScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('كافة المواد')),
body: ListWheelScrollView(itemExtent: 100, children: [Card(child: Text('العلوم')), Card(child: Text('الحاسوب'))]),
);
}
}
