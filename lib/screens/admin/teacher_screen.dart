import 'package:flutter/material.dart';

class TeacherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('واجهة المعلم الرقمية'),
        backgroundColor: Colors.indigo[700],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTeacherInfo(),
            SizedBox(height: 20),
            _buildActionGrid(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTeacherInfo() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          CircleAvatar(radius: 30, child: Icon(Icons.person)),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('مرحبا ايها الموجه الرقمي', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('قسم منارة الاجيال التعليمي'),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildActionGrid(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        _teacherCard(Icons.assignment_ind, 'تحضير الطلاب'),
        _teacherCard(Icons.add_task, 'اضافة واجب'),
        _teacherCard(Icons.bar_chart, 'رصد الدرجات'),
        _teacherCard(Icons.chat_bubble, 'تواصل مع اولياء الامور'),
      ],
    );
  }

  Widget _teacherCard(IconData icon, String title) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.indigo),
          SizedBox(height: 10),
          Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
