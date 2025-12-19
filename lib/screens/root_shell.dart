import 'package:flutter/material.dart';
import 'home_screen.dart';

class RootShell extends StatefulWidget {
@override
_RootShellState createState() => _RootShellState();
}

class _RootShellState extends State<RootShell> {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'ادلك الذكية',
theme: ThemeData(primarySwatch: Colors.indigo),
home: HomeScreen(),
);
}
}
