import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    // منطق التحقق القيادي من الهوية
    if (_emailController.text == "admin" && _passwordController.text == "123") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('خطأ في بيانات الدخول لنظام ادلك')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Icon(Icons.school_rounded, size: 100, color: Colors.indigo),
              SizedBox(height: 20),
              Text('نظام ادلك الرقمي', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text('نور المستقبل ومنارة الاجيال', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 40),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'اسم المستخدم', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'كلمة المرور', border: OutlineInputBorder()),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: _login,
                child: Text('دخول النظام'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
