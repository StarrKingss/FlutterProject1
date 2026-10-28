import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controller/mainmenu_ctrl.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});
  final menuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        index: menuController.selectedIndex.value,
        children: menuController.pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: menuController.selectedIndex.value,
        onTap: menuController.changePage,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      ),
    ));
  }
}