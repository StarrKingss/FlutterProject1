import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controller/listproduk_ctrl.dart';
import 'package:project1/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => RefreshIndicator(
            onRefresh: controller.refreshProduk,
            child: Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.listProduk.length,
                itemBuilder: (context, index) {
                  final produk = controller.listProduk[index];
                  Offset tapPosition = Offset.zero;
                  return Container(
                    width: 200,
                    child: Card(
                      child: Card(
                        color: const Color.fromARGB(255, 255, 217, 151),
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
                            child: Column(
                              children: [
                                Image.asset(
                                  controller.listProduk[index].image,
                                  width: 170,
                                  height: 170,
                                  fit: BoxFit.cover,
                                ),

                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      controller.listProduk[index].namaProduk,
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    Text(
                                      controller.listProduk[index].harga,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.green,
                                      ),
                                    ),

                                    Text(
                                      "Rating :  ${controller.listProduk[index].rating}",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
