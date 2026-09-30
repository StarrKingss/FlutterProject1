import 'package:get/get.dart';

class ConfirmregCtrl extends GetxController {
  late String name ;

  //method oninit pertama kali di esekusi
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;//menangkap data yg dikirim dari halaman sebelumnya
    name = arguments['nama'];
  }
}