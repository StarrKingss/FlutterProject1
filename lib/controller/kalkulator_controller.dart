import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilhitung = 0.0.obs;

  void tambah(double a1, double a2) {
    double hasiltambah = a1 + a2;
    hasilhitung.value = hasiltambah;
    Get.snackbar(
      "Hasil Jumlah",
      "${hasiltambah.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double a1, double a2) {
    double hasilkurang = a1 - a2;
    hasilhitung.value = hasilkurang;
    Get.snackbar(
      "Hasil Kurang",
      "${hasilkurang.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double a1, double a2) {
    double hasilkali = a1 * a2;
    hasilhitung.value = hasilkali;
    Get.snackbar(
      "Hasil Kali",
      "${hasilkali.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double a1, double a2) {
    if (a2 == 0) {
      Get.snackbar(
        "Error",
        "Tidak bisa membagi dengan nol",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    double hasilbagi = a1 / a2;
    hasilhitung.value = hasilbagi;
    Get.snackbar(
      "Hasil Bagi",
      "${hasilbagi.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  
}
