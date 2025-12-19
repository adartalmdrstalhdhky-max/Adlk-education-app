import 'package:flutter/material.dart';

class ReadingLessonScreen extends StatelessWidget {
  final String title;
  final String content;

  ReadingLessonScreen({
    this.title = "درس القراءة الرقمي",
    this.content = "مرحبا بك في منصة ادلك التعليمية.. هنا نص القراءة المخصص للطلاب لتعزيز مهارات اللغة العربية في نور المستقبل."
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.brown[400],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.brown[50],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.brown[200]!),
              ),
              child: Text(
                content,
                style: TextStyle(fontSize: 20, height: 1.8, color: Colors.brown[900]),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.mic), label: Text('تسجيل القراءة')),
                ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.volume_up), label: Text('استماع للنص')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
