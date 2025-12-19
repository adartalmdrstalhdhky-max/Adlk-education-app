import 'package:flutter/material.dart';

class ImportDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('مركز رفع البيانات')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_upload_outlined, size: 100, color: Colors.grey),
            SizedBox(height: 20),
            Text('رفع بيانات المدرسة الذكية (Excel/CSV)'),
            ElevatedButton(onPressed: () {}, child: Text('اختيار ملف البيانات')),
          ],
        ),
      ),
    );
  }
}
