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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 202, 238, 222)),
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
      backgroundColor: Colors.green[99],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Stack(
        children: [
          Text(
            "Forgot Password?",
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
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
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      prefixIcon: Icon(
                        Icons.message,
                        color: Colors.greenAccent,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter your phone number',
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.greenAccent,
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
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
                color: Color.fromARGB(255, 35, 134, 86),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
