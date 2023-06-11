import 'package:flutter/material.dart';
import 'package:flutter_app/productmodel.dart';
import 'package:get/get.dart';

import 'cart_controller.dart';
import 'cart_product.dart';

class Cartproducts extends StatelessWidget {
  final CartController controller = Get.find();
  Cartproducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (BuildContext context, int index) {
            return CartproductCard(
              controller: controller,
              product: controller.products.keys.toList()[index],
              quantity: controller.products.values.toList()[index],
              index: index,
            );
          }),
    );
  }
}

class CartproductCard extends StatelessWidget {
  final CartController controller;
  final product;
  final int quantity;
  final int index;
  const CartproductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              product.imageUrl,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(product.name),
          ),
          IconButton(
            onPressed: () {
              controller.removeproduct(product);
            },
            icon: const Icon(Icons.remove_circle),
          ),
          Text('$quantity'),
          IconButton(
            onPressed: () {
              controller.addproduct(product);
            },
            icon: const Icon(Icons.add_circle),
          ),
        ],
      ),
    );
  }
}
