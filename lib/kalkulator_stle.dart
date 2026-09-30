import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/components/custom_textfield.dart';
import 'package:project1/controller/kalkulator_controller.dart';
import 'package:project1/components/custom_button.dart';

class KalkulatorStle extends StatelessWidget {
  KalkulatorStle({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              hint: "Input Angka 1",
              txtController: txtangka1,
              cornerRadius: 10,
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            margin : EdgeInsets.all(10),
            child: CustomTextfield(
              hint: "Input Angka 2",
              txtController: txtangka2,
              cornerRadius: 10,
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top:30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal : 10),
                  child: CustomButton(
                                text : "Tambah",
                                onPressed: () {
                  if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                    Get.snackbar(
                      'Error',
                      'Input angka tidak boleh kosong',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }
                  controller.tambah(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                                },
                              ),
                ),
            Container(
              margin : EdgeInsets.symmetric(horizontal : 10),
              child: CustomButton(
                text : "Kurang",
                onPressed: () {
                  if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                    Get.snackbar(
                      'Error',
                      'Input angka tidak boleh kosong',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }
                  controller.kurang(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
              ),
            ),
              ],
            ),
          ),
          Container(
            margin:  EdgeInsets.only(top:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal : 10),
                  child: CustomButton(
                    text : "Kali",
                    onPressed: () {
                      if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                        Get.snackbar(
                          'Error',
                          'Input angka tidak boleh kosong',
                          snackPosition: SnackPosition.BOTTOM,
                        );
                        return;
                      }
                      controller.kali(
                        double.parse(txtangka1.text),
                        double.parse(txtangka2.text),
                      );
                    },
                  ),
                ),
                Container(
                  margin : EdgeInsets.symmetric(horizontal : 10),
                  child: CustomButton(
                    text : "Bagi",
                    onPressed: () {
                      if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                        Get.snackbar(
                          'Error',
                          'Input angka tidak boleh kosong',
                          snackPosition: SnackPosition.BOTTOM,
                        );
                        return;
                      }
                      controller.bagi(
                        double.parse(txtangka1.text),
                        double.parse(txtangka2.text),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin : EdgeInsets.all(25),
            child: Obx(
              () => Text(
                'Hasil: ${controller.hasilhitung.value}',
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            
            child: CustomButton(
              text: "Reset",
              onPressed: () {
                txtangka1.clear();
                txtangka2.clear();
                controller.hasilhitung.value = 0.0;
              },
            ),
          ),
        ],
      ),
    );
  }
}