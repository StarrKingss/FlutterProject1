import 'package:get/get.dart';
import 'package:project1/pages/confirmregistration.dart';
import 'package:project1/pages/registrationpage.dart';

class Routes {
  //kita list halaman/pages yg ada di dalam applikasi kita
  static const String registrationpage = "/registrationpage";
  static const String confirmregistration = "/confirmregistration";

  //kita tampung ke dalam array yg akan kita pasang ke main dart
  static final myPages = [
    GetPage(name: registrationpage, page: () => const Registrationpage()),
    GetPage(name: confirmregistration, page: () => const Confirmregistration()),
  ];
}