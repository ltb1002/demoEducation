import 'package:education_elearning/widgets/custom.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final String hintText = "Email or Phone number";
  final IconData icon = Icons.email;
  final bool obscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 175, 212, 226),
              Color.fromARGB(255, 211, 203, 175),
            ],
          ),
        ),
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Image.asset("assets/images/img_4.png", height: 300),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "In the lessons we learn new words and rules \nfor vocabularies, continues and articles",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: controller,
                hintText: hintText,
                icon: icon,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: controller,
                hintText: hintText,
                icon: icon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
