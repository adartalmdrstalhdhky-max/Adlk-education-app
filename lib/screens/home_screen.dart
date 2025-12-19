import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ادلك - المدرسة الذكية'),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(16),
        crossAxisCount: 2,
        children: [
          _buildMenuCard(context, 'المواد الدراسية', Icons.book, Colors.blue),
          _buildMenuCard(context, 'القران الكريم', Icons.menu_book, Colors.green),
          _buildMenuCard(context, 'الحساب المالي', Icons.account_balance_wallet, Colors.orange),
          _buildMenuCard(context, 'الادارة', Icons.admin_panel_settings, Colors.red),
        ],
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, IconData icon, Color color) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
