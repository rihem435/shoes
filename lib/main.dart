import 'package:app/pages/forgot_password_page.dart';
import 'package:app/pages/home_page.dart';
import 'package:app/pages/login_page.dart';
import 'package:app/pages/register_page.dart';
import 'package:app/pages/verify_email_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: LoginPage(),

      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/register": (context) => RegisterPage(),
        "/forgot": (context) => ForgotPasswordPage(),
        "/verify": (context) => VerifyEmailPage()
      },
    );
  }
}
