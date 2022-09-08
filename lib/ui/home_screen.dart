import 'package:flutter/material.dart';
import 'package:submission_dicoding/model/product_list.dart';
import 'package:submission_dicoding/ui/detail_sscreen.dart';

class HomeScreen extends StatelessWidget {
  final name;
  const HomeScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column( 
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.orange),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hallo, $name',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              child: const Icon(Icons.person)),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          size: 15,
                          color: Colors.red,
                        ),
                        Text("Bandung"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListView.builder(
                itemCount: listProductList.length,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final ListProduct product = listProductList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return DetailScreen(product: product);
                        },
                      ));
                    },
                    child: Card(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset(product.imageAsset),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(product.price)
                                ],
                              ),
                            ))
                          ]),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
