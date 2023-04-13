import 'package:flutter/material.dart';
import 'package:utsmobile/pages/account_page.dart';
import 'package:utsmobile/pages/main_menu.dart';
import 'package:utsmobile/pages/menu_login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginMenu(),
        '/Menu-page': (context) => MainMenu(),
        '/Account-page': (context) => AccountPage()
      },
    );
  }
}
