import 'package:flutter/material.dart';
import 'package:project1/components/loginclone_textfield.dart';
import 'package:project1/components/loginclone_button.dart';
import 'package:project1/components/loginclone_text.dart';

class LoginCloneFix extends StatelessWidget {
  const LoginCloneFix({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(  
      backgroundColor: Colors.white,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Instagrama
              LogincloneText(
                text: "Instagram",
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),

              const SizedBox(height: 40), //buat bikin jarak kosong
              // Username
              LoginCloneTF(
                hint: "Phone number, email or username",
                txtController: TextEditingController(),
                cornerRadius: 10,
              ),
              const SizedBox(height: 10),
              // Password
              LoginCloneTF(
                hint: "Password",
                txtController: TextEditingController(),
                cornerRadius: 10,
              ),
              const SizedBox(height: 12),
              // Button Login
              SizedBox(
                width: double
                    .infinity, //untuk membuat button login memenuhi lebar layar
                height: 45,

                child: LoginCloneButton(
                  text: "Login",
                  onPressed: () {
                    // Handle login button press
                  },
                  cornerRadius: 4,
                ),
              ),
              const SizedBox(height: 80),
              LogincloneText(
                text: "Don't have an account? Sign up",
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
