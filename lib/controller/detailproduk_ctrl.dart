import 'package:get/get.dart';

class DetailProdukController extends GetxController {
   late String namaProduk;
   late String harga;
   late String deskripsi;
   late String image;
   late String review;
   late String rating;
   late String asal;


   @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaProduk = arguments['namaProduk'];
    harga = arguments['harga'];
    deskripsi = arguments['deskripsi'];
    image = arguments['image'];
    review = arguments['review'];
    rating = arguments['rating'];
    asal = arguments['asal'];

    }
}