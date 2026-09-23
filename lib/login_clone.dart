import 'package:flutter/material.dart';

class login_clone extends StatefulWidget {
  const login_clone({super.key});

  @override
  State<login_clone> createState() => _login_cloneState();
}

class _login_cloneState extends State<login_clone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Instagrama
              const Text(
                "Instagram",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 40),

              // Username
              const TextField(
                decoration: InputDecoration(
                  hintText: "Phone number, email or username",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 10),

              // Password
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 12),

              // Button Login
              SizedBox(
                width: double.infinity,
                height: 45,

                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),

                  child: const Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 80),
              const Text(
                "Don't have an account? Sign up.",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}