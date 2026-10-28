import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(172, 79, 120, 149),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150',
                  ), // Bisa diganti aset lokal
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dio Satria Adhie",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "lihat profile",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Seorang CEO dari grup perusahaan zhang",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  Icon(Icons.house_outlined, size: 40, color: Colors.black54),
                ],
              ),
            ),
            const SizedBox(height: 32),

            const Text(
              "Settings",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.grey.shade200),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Personal information",
                            style: TextStyle(fontSize: 15),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.black,
                          ),
                          onTap: () {},
                        ),
                        Divider(height: 1, indent: 16, endIndent: 16),

                        ListTile(
                          leading: Icon(Icons.security, color: Colors.black),
                          title: Text(
                            "Login & security",
                            style: TextStyle(fontSize: 15),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.black,
                          ),
                          onTap: () {},
                        ),
                        Divider(height: 1, indent: 16, endIndent: 16),

                        ListTile(
                          leading: Icon(Icons.mail, color: Colors.black),
                          title: Text("E-Mail", style: TextStyle(fontSize: 15)),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.black,
                          ),
                          onTap: () {},
                        ),
                        Divider(height: 1, indent: 16, endIndent: 16),

                        ListTile(
                          leading: Icon(Icons.phone, color: Colors.black),
                          title: Text(
                            "Contacts",
                            style: TextStyle(fontSize: 15),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.black,
                          ),
                          onTap: () {},
                        ),

                        ListTile(
                          leading: Icon(
                            Icons.settings_accessibility,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Accessibility",
                            style: TextStyle(fontSize: 15),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.black,
                          ),
                          onTap: () {},
                        ),
                        Divider(height: 1, indent: 16, endIndent: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
