import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_app/productmodel.dart';

import 'cart_controller.dart';

class Catalogproducts extends StatelessWidget {
  // final productController = Get.put(productController());
  //final productController controller = Get.find();
  final int index;
  const Catalogproducts({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: product.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CatalogproductCard(index: index);
            }));
  }
}

class CatalogproductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  CatalogproductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(product.products[index].imageUrl),
          ),
          const SizedBox(width: 20),
          Expanded(
              child: Text(
            product.products[index].name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
          Expanded(
            child: Text('${product.products[index].price}'),
          ),
          IconButton(
              onPressed: () {
                cartController.addproduct(product.products[index]);
              },
              icon: const Icon(Icons.add_circle)),
          IconButton(
            onPressed: () {
              cartController.removeproduct(product.products[index]);
            },
            icon: const Icon(Icons.remove_circle),
          ),
        ],
      ),
    );
  }
}
