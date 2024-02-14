import 'package:flutter/material.dart';
import 'package:forgot_password_frontend/forgetpassword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forget Password',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 202, 238, 222)),
        useMaterial3: true,
      ),
      home: ForgetPasswordScreen(),
    );
  }
}
