import 'package:education_elearning/customs/custom_email_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 240, 240, 240),
              Color.fromARGB(255, 181, 231, 210),
            ],
          ),
        ),
        width: double.infinity,
        child: SafeArea(
          child: Form(
            key: _formKey, // bọc trong Form
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset("assets/images/img_4.png", height: 200),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 20),

                // Email field
                CustomTextField(
                  label: "Email",
                  hintText: "",
                  icon: Icons.email,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }
                    if (!value.contains('@')) {
                      return 'Invalid email';
                    }
                    return null;
                  },
                ),

                // Password field
                CustomTextField(
                  label: "Password",
                  hintText: "",
                  icon: Icons.lock,
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),

                // Confirm Password field
                CustomTextField(
                  label: "Confirm Password",
                  hintText: "",
                  icon: Icons.lock_outline,
                  obscureText: true,
                  controller: confirmPasswordController,
                  validator: (value) {
                    if (value != passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 14,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // ✅ Nếu form hợp lệ
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Form is valid!")),
                      );
                    }
                  },
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
