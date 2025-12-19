import 'package:flutter/material.dart';

class ReadingLessonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('درس القراءة الرقمي')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('نور المستقبل للقراءة العربية', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),
            Divider(),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
              child: Text(
                'هنا يتم وضع النص القرائي الذي سيقوم الطالب بقراءته ومتابعته عبر نظام ادلك الذكي',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: Icon(Icons.mic), 
              label: Text('بدء التسجيل الصوتي'),
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            )
          ],
        ),
      ),
    );
  }
}
