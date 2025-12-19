import 'package:flutter/material.dart';

class ContentStructureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('هيكلية المحتوى التعليمي'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _buildUnitHeader('الوحدة الاولى: التأسيس الرقمي'),
          _buildLessonItem('الدرس الاول: مقدمة في ادلك'),
          _buildLessonItem('الدرس الثاني: نور المستقبل للعلوم'),
          Divider(),
          _buildUnitHeader('الوحدة الثانية: منارة الاجيال'),
          _buildLessonItem('الدرس الاول: الحساب الذهني الذكي'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.account_tree_outlined),
        backgroundColor: Colors.blueGrey[900],
      ),
    );
  }

  Widget _buildUnitHeader(String title) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.grey[200],
      child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey[800])),
    );
  }

  Widget _buildLessonItem(String lesson) {
    return ListTile(
      leading: Icon(Icons.circle, size: 12, color: Colors.blue),
      title: Text(lesson),
      trailing: Icon(Icons.drag_handle),
      onTap: () {},
    );
  }
}
