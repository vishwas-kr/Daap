import 'package:flutter/material.dart';
import 'package:robbin_hood_google_soln/views/home/home_page.dart';

import '../../utils/app_colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confiremPasswordController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confiremPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black87),
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.black87, letterSpacing: 1),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/signup.png"),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      filled: true,
                      isDense: true,
                      hintText: "Email",
                      hintStyle: const TextStyle(fontSize: 14),
                      fillColor: AppColors.lightGrey,
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColors.fontColor2),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColors.fontColor2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      filled: true,
                      isDense: true,
                      hintText: "Password",
                      hintStyle: const TextStyle(fontSize: 14),
                      fillColor: AppColors.lightGrey,
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColors.fontColor2),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColors.fontColor2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _confiremPasswordController,
                    decoration: InputDecoration(
                      filled: true,
                      isDense: true,
                      hintText: "Confirm Password",
                      hintStyle: const TextStyle(fontSize: 14),
                      fillColor: AppColors.lightGrey,
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColors.fontColor2),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColors.fontColor2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: double.maxFinite,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20, letterSpacing: 1),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const RobinHoodHomePage();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  GestureDetector(
                    child: const Text(
                      'Already have an account?  Login',
                      style: TextStyle(color: Colors.grey),
                    ),
                    onTap: () {
                      // TODO: Navigate to signup page
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
