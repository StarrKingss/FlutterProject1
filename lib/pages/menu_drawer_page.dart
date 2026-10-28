
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controller/menu_drawer_ctrl.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final menuController = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.65,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
             decoration: BoxDecoration(
                color: Color.fromARGB(172, 79, 120, 149),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xFFFFFBF5),
                    child: Icon(
                      Icons.person,
                      size: 32,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Dio Satria Adhie",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Dio Satria Adhie",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: menuController.selectedIndex.value == 0,
              onTap: () {
                menuController.changePage(0);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              selected: menuController.selectedIndex.value == 1,
              onTap: () {
                menuController.changePage(1);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              selected: menuController.selectedIndex.value == 2,
              onTap: () {
                menuController.changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: IndexedStack(
        index: menuController.selectedIndex.value,
        children: menuController.pages,
      ),
    ));
  }
}
