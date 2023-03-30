import 'package:flutter/material.dart';
import 'package:robbin_hood_google_soln/views/register/custom_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateContoller = TextEditingController();
  final TextEditingController _joinController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black87),
        title: const Text(
          "Join our family",
          style: TextStyle(color: Colors.black87, letterSpacing: 1),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Image.asset("assets/images/group.png"),
              customTextField(controller: _nameController, hintText: "Name"),
              const SizedBox(height: 10),
              customTextField(controller: _joinController, hintText: "Join As"),
              const SizedBox(height: 10),
              customTextField(
                  controller: _mobileController, hintText: "Mobile Number"),
              const SizedBox(height: 10),
              customTextField(controller: _emailController, hintText: "Email"),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: customTextField(
                        controller: _cityController, hintText: "City"),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: customTextField(
                        controller: _stateContoller, hintText: "State"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              customTextField(
                  controller: _textController,
                  hintText: "Any thoughts? We'd love to hear them!"),
              const SizedBox(height: 15),
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
                    'Join',
                    style: TextStyle(fontSize: 20, letterSpacing: 1),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const RobinHoodHomePage();
                    //     },
                    //   ),
                    // );
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
