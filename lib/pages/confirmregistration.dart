import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/components/custom_textfield.dart';
import 'package:project1/controller/confirmreg_ctrl.dart';

class Confirmregistration extends StatelessWidget {
  const Confirmregistration({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(ConfirmregCtrl());
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Registration"),
      ),
      body: Column(
        children: [
          
          CustomTextfield(
            hint: "Nama",
            txtController: TextEditingController(text: Get.arguments['nama']),
            cornerRadius: 10,
          ),
          CustomTextfield(
            hint: "Alamat",
            txtController: TextEditingController(text: Get.arguments['alamat']),
            cornerRadius: 10,
          ),
          CustomTextfield(
            hint: "Jenis Kelamin",
            txtController: TextEditingController(text: Get.arguments['jeniskelamin']),
            cornerRadius: 10,
          ),
          CustomTextfield(
            hint: "Jenis Kelamin",
            txtController: TextEditingController(text: Get.arguments['nohp']),
            cornerRadius: 10,
          ),
          CustomTextfield(
            hint: "Jenis Kelamin",
            txtController: TextEditingController(text: Get.arguments['email']),
            cornerRadius: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Get.back(); // Kembali ke halaman sebelumnya
              // Lakukan sesuatu dengan data yang dikonfirmasi, misalnya simpan ke database
            },
            child: Text("Back"),
          ),
        ],
      ),
    );
  }
}