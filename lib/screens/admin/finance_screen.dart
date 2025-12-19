import 'package:flutter/material.dart';

class FinanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('النظام المالي لادلك')),
      body: Column(
        children: [
          _buildFinancialSummary(),
          Expanded(
            child: ListView(
              children: [
                _financeAction('سداد رسوم طالب', Icons.add_card, Colors.green),
                _financeAction('كشف مصروفات المدرسة', Icons.account_balance, Colors.red),
                _financeAction('رواتب الكادر التعليمي', Icons.people_outline, Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFinancialSummary() {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.indigo,
      child: Center(
        child: Column(
          children: [
            Text('الرصيد المتاح في الصندوق', style: TextStyle(color: Colors.white70)),
            Text('١,٥٠٠,٠٠٠ ر.ي', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _financeAction(String title, IconData icon, Color color) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
