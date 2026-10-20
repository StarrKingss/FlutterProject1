import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project1/controller/listproduk_ctrl.dart';
import 'package:project1/models/produk_model.dart';
import 'package:project1/routes.dart';
import 'package:project1/controller/detailproduk_ctrl.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});
  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 119, 119, 119),
      appBar: AppBar(title: const Text("List Produk")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => RefreshIndicator(
            onRefresh: controller.refreshProduk,
            child: ListView.builder(
              itemCount: controller.listProduk.length,
              itemBuilder: (context, index) {
                final produk = controller.listProduk[index];
                Offset tapPosition = Offset.zero;
                return Dismissible(
                  onDismissed: (direction) {
                    controller.listProduk.removeAt(index);
                    Get.snackbar(
                      "Produk Dihapus",
                      "${produk.namaProduk} telah dihapus dari daftar.",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  key: Key(produk.namaProduk),
                  direction: DismissDirection.startToEnd,
                  background: Container(
                    color: Colors.red,
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  child: Card(
                    color: const Color.fromARGB(255, 255, 253, 208),
                    child: InkWell(
                      onTapDown: (details) {
                          tapPosition = details.globalPosition;
                      },
                      onLongPress: () {
                        showMenu(
                          context: context,
                          position: RelativeRect.fromLTRB(
                            tapPosition.dx,
                            tapPosition.dy,
                            tapPosition.dx,
                            tapPosition.dy,
                          ),
                          items: [
                            PopupMenuItem(
                              child: Text("Hapus"),
                              onTap: () {
                                controller.listProduk.removeAt(index);
                                Get.snackbar(
                                  "Produk Dihapus",
                                  "${produk.namaProduk} telah dihapus dari daftar.",
                                  snackPosition: SnackPosition.BOTTOM,
                                );
                              },
                            ),
                            PopupMenuItem(
                              child: Text("Detail"),
                              onTap: () {
                                Get.toNamed(
                                  Routes.detailproduk,
                                  arguments: {
                                    'namaProduk': produk.namaProduk,
                                    'harga': produk.harga,
                                    'deskripsi': produk.deskripsi,
                                    'image': produk.image,
                                    'review': produk.review,
                                    'asal': produk.asal,
                                    'rating': produk.rating,
                                  },
                                );
                                Get.snackbar(
                                  "Detail Produk",
                                  "Beralih ke detail produk.",
                                  snackPosition: SnackPosition.BOTTOM,
                                );
                              },
                            ),
                          ],
                        );
                      },

                      onTap: () {
                        Get.toNamed(
                          Routes.detailproduk,
                          arguments: {
                            'namaProduk': produk.namaProduk,
                            'harga': produk.harga,
                            'deskripsi': produk.deskripsi,
                            'image': produk.image,
                            'review': produk.review,
                            'asal': produk.asal,
                            'rating': produk.rating,
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset(
                              controller.listProduk[index].image,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),

                            const SizedBox(width: 10),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.listProduk[index].namaProduk,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(controller.listProduk[index].harga),

                                  Text(
                                    " ${controller.listProduk[index].rating}",
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              CupertinoIcons.chevron_right,
                              size: 24,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
