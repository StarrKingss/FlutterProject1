import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/routes.dart';
import 'package:project1/components/loginclone_textfield.dart';
import 'package:project1/components/loginclone_text.dart';
import 'package:project1/components/custom_dropdown.dart';

class Registrationpage extends StatelessWidget {
  const Registrationpage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController txtNama = TextEditingController();
    final TextEditingController txtAlamat = TextEditingController();
    final TextEditingController txtJenisKelamin = TextEditingController();
    final TextEditingController txtNo = TextEditingController();
    final TextEditingController txtEmail = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("")),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: LogincloneText(
                text: "Register",
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: LoginCloneTF(
                hint: "Nama",
                txtController: txtNama,
                cornerRadius: 18,
                obsecureText: false,
                prefixIcon: Icons.person,
                fillColor: Colors.blue.withOpacity(0.1),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: LoginCloneTF(
                hint: "Alamat",
                txtController: txtAlamat,
                cornerRadius: 18,
                obsecureText: false,
                prefixIcon: Icons.location_city,
                fillColor: Colors.blue.withOpacity(0.1),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: LoginCloneTF(
                hint: "No Handphone",
                txtController: txtNo,
                cornerRadius: 18,
                obsecureText: false,
                prefixIcon: Icons.phone,
                fillColor: Colors.blue.withOpacity(0.1),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: LoginCloneTF(
                hint: "Email",
                txtController: txtEmail,
                cornerRadius: 18,
                obsecureText: false,
                prefixIcon: Icons.email,
                fillColor: Colors.blue.withOpacity(0.1),
              ),
            ),
            CustomDropdown(
              items: const ["","Laki Laki", "Perempuan"],
              value: txtJenisKelamin.text.isEmpty ? "" : txtJenisKelamin.text,
              onChanged: (value) {
                txtJenisKelamin.text = value ?? "";
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Lakukan sesuatu dengan nama, misalnya simpan ke database atau tampilkan di layar
                Get.toNamed(
                  Routes.confirmregistration,
                  arguments: {
                    'nama': txtNama.text.toString(),
                    'alamat': txtAlamat.text.toString(),
                    'nohp': txtNo.text.toString(),
                    'email': txtEmail.text.toString(),
                    'jeniskelamin': txtJenisKelamin.text.toString(),
                  },
                );
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
