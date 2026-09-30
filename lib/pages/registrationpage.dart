import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/components/custom_textfield.dart';
import 'package:project1/routes.dart';

class Registrationpage extends StatelessWidget {
  const Registrationpage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController txtNama = TextEditingController();

    return Scaffold(appBar: AppBar(title: const Text("Registration Page"),),
     body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextfield(
            hint: "Nama",
            txtController: txtNama,
            cornerRadius: 10,
          ),
          ElevatedButton(
            onPressed: () {
              String nama = txtNama.text;
              // Lakukan sesuatu dengan nama, misalnya simpan ke database atau tampilkan di layar
              Get.toNamed(Routes.confirmregistration, arguments: {
                'nama': txtNama.text.toString(),
                'jenis kelamin':"Laki-Laki",});
            },
            child: Text("Submit"),
          ),
        ],
      ),
    ),);
  }
}