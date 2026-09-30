import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/kalkulator_page.dart';
import 'package:project1/kalkulator_stle.dart';
import 'package:project1/login_clone.dart';
import 'package:project1/login_page.dart';
import 'package:project1/pages/login_clone_fix.dart';
import 'package:project1/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:"Belajar Flutter PPLG 3",
      initialRoute: Routes.registrationpage,
      getPages: Routes.myPages,
    );
  }
}
