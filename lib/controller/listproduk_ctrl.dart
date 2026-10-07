import 'package:project1/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {

   List<ProdukModel> listProduk = [
  ProdukModel(
    namaProduk: "Rendang",
    harga: "35 ribu",
    deskripsi: "Daging sapi yang dimasak dengan santan dan bumbu rempah khas.",
    image: "assets/images/rendang.jpg",
    review: "Dagingnya empuk dan bumbunya sangat meresap.",
    rating: "4.9",
    asal: "Sumatera Barat",
  ),

  ProdukModel(
    namaProduk: "Gudeg",
    harga: "20 ribu",
    deskripsi: "Masakan nangka muda yang dimasak dengan santan dan gula merah.",
    image: "assets/images/gudeg.jpg",
    review: "Manis, gurih, dan cocok dimakan dengan nasi.",
    rating: "4.8",
    asal: "Yogyakarta",
  ),

  ProdukModel(
    namaProduk: "Pempek",
    harga: "15 ribu",
    deskripsi: "Makanan berbahan dasar ikan dan tepung sagu yang disajikan dengan kuah cuko.",
    image: "assets/images/pempek.jpg",
    review: "Teksturnya kenyal dan kuah cukonya enak.",
    rating: "4.8",
    asal: "Palembang",
  ),

  ProdukModel(
    namaProduk: "Rawon",
    harga: "25 ribu",
    deskripsi: "Sup daging sapi dengan kuah hitam khas dari kluwek.",
    image: "assets/images/rawon.jpg",
    review: "Kuahnya gurih dan aroma rempahnya kuat.",
    rating: "4.7",
    asal: "Jawa Timur",
  ),

  ProdukModel(
    namaProduk: "Papeda",
    harga: "30 ribu",
    deskripsi: "Makanan khas Papua berbahan dasar sagu yang biasanya disajikan dengan ikan kuah kuning.",
    image: "assets/images/papeda.jpg",
    review: "Unik, lembut, dan cocok dengan kuah ikan.",
    rating: "4.6",
    asal: "Papua",
  ),
];
}