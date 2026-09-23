import 'package:flutter/material.dart';
import 'package:project1/components/custom_textfield.dart';
import 'package:project1/components/custom_button.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Login Page')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: CustomTextfield(
              hint: "Input Username",
              txtController: usernameController,
              cornerRadius: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: CustomTextfield(
              hint: "Input Password",
              txtController: passwordController,
              cornerRadius: 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: CustomButton(
                  text: "Login",
                  onPressed: () {
                    String username = usernameController.text;
                    String password = passwordController.text;
                    if (username == "admin" && password == "admin") {
                      // Login berhasil
                      print("Login berhasil");
                    } else {
                      // Login gagal
                      print("Login gagal");
                    }
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: CustomButton(
                  text: "Register",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
