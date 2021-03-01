import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_clone_whatsapp/home_page.dart';
import 'package:project_clone_whatsapp/template/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: primaryGreen),
      home: HomePage(title: "WhatsApp"),
    );
  }
}
