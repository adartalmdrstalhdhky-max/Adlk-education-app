import 'package:flutter/material.dart';
class AdminScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('ادارة نظام ادلك')),
body: ListView(
children: [
ListTile(leading: Icon(Icons.people), title: Text('ادارة الطلاب'), onTap: () {}),
ListTile(leading: Icon(Icons.school), title: Text('ادارة المعلمين'), onTap: () {}),
ListTile(leading: Icon(Icons.settings), title: Text('اعدادات المنظومة'), onTap: () {}),
],
),
);
}
}
