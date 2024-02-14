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
            seedColor: const Color.fromARGB(255, 202, 238, 222)),
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
      backgroundColor: const Color.fromARGB(255, 233, 242, 239),
      body: Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          Container(
            margin: const EdgeInsets.only(top: 11),
            child: const Text(
              "Forgot Password?",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Select which contact details should we use to reset your password',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  height: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 233, 242, 239),
                            borderRadius: BorderRadius.circular(100)),
                        child: const Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 90, 184, 158),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("via sms:"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 233, 242, 239),
                            borderRadius: BorderRadius.circular(100)),
                        child: const Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 90, 184, 158),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('via Email:'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 10,
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Container(
                width: 40,
                height: 60,
                color: const Color.fromARGB(255, 6, 168, 122),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      // ElevatedButton(
                      // onPressed: () {
                      // Handle password reset logic here
                      // Check if email or phone is provided and send reset accordingly

                      // Navigate to the next screen
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const ResetPasswordScreen(),
                      //     ),
                      //   );
                      // },
                      // style: ButtonStyle(
                      //   backgroundColor: MaterialStateProperty.all(null),
                      // ),
                      // child: const Text('Continue'),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
