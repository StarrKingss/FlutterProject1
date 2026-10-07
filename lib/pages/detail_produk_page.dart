import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project1/controller/detailproduk_ctrl.dart';

class DetailProdukPage extends StatelessWidget {
  DetailProdukPage({super.key, });


  @override
  Widget build(BuildContext context) {
      final controller = Get.put(DetailProdukController());
    return Scaffold(
      
      appBar: AppBar(title: Text("Detail Makanan")),

      body: Container(
        color: const Color(0xFFF3E8D5),
        child: Align(
          alignment: Alignment.topCenter,
          child: Card(
            color: const Color(0xFFFFFBF5),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min, // ⭐ penting
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    controller.image,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                SizedBox(height: 10),

                Text(
                  controller.namaProduk,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                Text(
                  controller.harga,
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),

                SizedBox(height: 10),

                Text("Rating: ${controller.rating}"),
                SizedBox(height: 10),
                Text("Review: ${controller.review}"),

                SizedBox(height: 10),

                Text("Asal: ${controller.asal}"),


                SizedBox(height: 10),

                Text(
                  "Deskripsi: ${controller.deskripsi}",
                ),
              ],
            ),
          ),
        ),
      ),
      )
    );
  }
}
