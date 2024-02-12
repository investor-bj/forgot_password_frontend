import 'package:flutter/material.dart';

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
            seedColor: const Color.fromARGB(255, 112, 228, 176)),
        useMaterial3: true,
      ),
      home: ForgetPasswordScreen(),
    );
  }
}

// ignore: must_be_immutable
class ForgetPasswordScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      background Color: const Color.fromARGB(255, 194, 230, 195)
      appBar: AppBar(
        title: const Text('Forget Password'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Select which contact details should we use to reset your password',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'pls enter your email address',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number',
                  ),
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle password reset logic here
                      // Check if email or phone is provided and send reset accordingly

                      // Navigate to the next screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetPasswordScreen(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(null),
                    ),
                    child: const Text('Continue'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
      ),
      body: const Center(
        child: Text('Reset Password Screen'),
      ),
    );
  }
}
