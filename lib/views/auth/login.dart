import 'package:flutter/material.dart';
import 'package:robbin_hood_google_soln/views/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
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
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                    // validator: (value) =>
                    //     value.isEmpty ? 'Please enter your email' : null,
                    // onSaved: (value) => _emailController = value,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    // validator: (value) =>
                    //     value.isEmpty ? 'Please enter your password' : null,
                    // onSaved: (value) => _password = value,
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const RobinHoodHomePage();
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                          child: const Text('Donate Food'));
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print(_emailController.text);
                      },
                      child: Text("ok")),
                  const SizedBox(height: 20.0),
                  GestureDetector(
                    child: const Text('Don\'t have an account? Sign up'),
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
