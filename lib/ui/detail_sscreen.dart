import 'package:flutter/material.dart';
import 'package:submission_dicoding/model/product_list.dart';
import 'package:submission_dicoding/widget/fav_button.dart';

class DetailScreen extends StatelessWidget {
  final ListProduct product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(product.imageAsset),
                        fit: BoxFit.cover)),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(product.price), const FavoriteButton()],
                    ),
                    const SizedBox(height: 18),
                    Text(product.description)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.5))),
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.orange),
                          primary: Colors.white),
                      child: const Text(
                        "Beli",
                        style: TextStyle(color: Colors.orange),
                      ))),
              const SizedBox(width: 10),
              Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {},
                      child: const Text("+ Keranjang")))
            ],
          ),
        ),
      ),
    );
  }
}
