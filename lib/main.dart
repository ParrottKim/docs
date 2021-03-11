import 'package:docs/pages/auth_page.dart';
import 'package:docs/pages/layout_page.dart';
import 'package:docs/pages/login_page.dart';
import 'package:docs/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: mainTheme,
      initialRoute: AuthPage.id,
      routes: {
        AuthPage.id: (context) => AuthPage(),
        LoginPage.id: (context) => LoginPage(),
        LayoutPage.id: (context) => LayoutPage(),
      },
    );
  }
}