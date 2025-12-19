
Widget _item(BuildContext context, String t, IconData i, Widget screen) {
return Card(
child: InkWell(
onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
},
child: Column(
mainAxisAlignment: MainAxisAlignment.center, 
children: [Icon(i, size: 40), Text(t)]
)
)
);
}

// الاستخدام داخل GridView
_item(context, 'المواد', Icons.book, SubjectsScreen()),
_item(context, 'المالية', Icons.payments, FinanceScreen()),
_item(context, 'القران', Icons.star, QuranLessonsScreen()),
_item(context, 'الادارة', Icons.admin_panel_settings, AdminScreen()),
