import 'package:education_elearning/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Image.asset("assets/images/img_4.png", height: 300),
                  ],
                ),
              ),

              const Spacer(),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text(
                "In the lessons we learn new words.",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 20, height: 4, color: Colors.black87),
                  const SizedBox(width: 4),
                  Container(width: 8, height: 4, color: Colors.grey),
                ],
              ),
              const SizedBox(height: 40),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 14,
                  ),
                ),
                onPressed: () => Get.toNamed(AppRoutes.signIn), // 🔹 sửa lại
                child: const Text("Continue", style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 20),

              GestureDetector(
                onTap: () => Get.offAllNamed(AppRoutes.signIn),
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.black45, fontSize: 14),
                ),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
