import 'package:get/get.dart';
import 'package:project1/pages/confirmregistration.dart';
import 'package:project1/pages/list_produk_page.dart';
import 'package:project1/pages/registrationpage.dart';
import 'package:project1/pages/detail_produk_page.dart';

class Routes {
  //kita list halaman/pages yg ada di dalam applikasi kita
  static const String registrationpage = "/registrationpage";
  static const String confirmregistration = "/confirmregistration";
  static const String listproduk = "/listproduk";
  static const String detailproduk = "/detailproduk";

  //kita tampung ke dalam array yg akan kita pasang ke main dart
  static final myPages = [
    GetPage(name: registrationpage, page: () => const Registrationpage()),
    GetPage(name: confirmregistration, page: () => const Confirmregistration()),
    GetPage(name: listproduk, page: () => ListProdukPage()),
    GetPage(name: detailproduk, page: () => DetailProdukPage()),
  ];
}