import 'package:flutter/material.dart';

class ManageStudentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ادارة طلاب ادلك')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'البحث عن طالب في نور المستقبل',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text('اسم الطالب رقم ${index + 1}'),
                subtitle: Text('الصف الدراسي الذكي'),
                trailing: IconButton(icon: Icon(Icons.edit, color: Colors.blue), onPressed: () {}),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
