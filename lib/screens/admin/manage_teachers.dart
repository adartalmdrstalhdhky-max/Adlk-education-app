import 'package:flutter/material.dart';

class ManageTeachersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('كادر معلمين ادلك'), backgroundColor: Colors.indigo),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: ListTile(
            leading: Icon(Icons.person_pin, color: Colors.indigo, size: 40),
            title: Text('المعلم / الموجه الرقمي ${index + 1}'),
            subtitle: Text('تخصص مادة الذكاء الاصطناعي'),
            trailing: Wrap(
              children: [
                IconButton(icon: Icon(Icons.edit, color: Colors.green), onPressed: () {}),
                IconButton(icon: Icon(Icons.delete, color: Colors.red), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_reaction),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
