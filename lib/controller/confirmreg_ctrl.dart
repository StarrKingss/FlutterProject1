import 'package:get/get.dart';

class ConfirmregCtrl extends GetxController {
  late String name ;
  late String alamat;
  //late String jeniskelamin;
  late String nohp;
  late String email;
  

  //method oninit pertama kali di esekusi
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;//menangkap data yg dikirim dari halaman sebelumnya
    name = arguments['nama'];
    alamat = arguments['alamat'];
    //jeniskelamin = arguments['jeniskelamin'];
    nohp = arguments['nohp'];
    email = arguments['email'];
  }

}