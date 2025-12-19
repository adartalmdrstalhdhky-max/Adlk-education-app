import 'package:flutter/material.dart';

class SystemSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('اعدادات ادلك الرقمية'), backgroundColor: Colors.blueGrey),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            ListTile(
              title: Text('تعديل اسم العلامة التجارية'),
              subtitle: Text('ادلك - نور المستقبل'),
              trailing: Icon(Icons.edit),
            ),
            SwitchListTile(
              title: Text('تفعيل نظام الاشعارات الذكية'),
              value: true,
              onChanged: (val) {},
            ),
            ListTile(
              title: Text('تحديث قاعدة البيانات السحابية'),
              leading: Icon(Icons.cloud_sync),
              onTap: () {},
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {},
              child: Text('حفظ كافة التغييرات'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            )
          ],
        ),
      ),
    );
  }
}
