import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_app/Catalogproduct.dart';

import 'cart_product.dart';
import 'cart_total.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catalog")),
      body: SafeArea(
          child: Column(children: [
        const Catalogproducts(
          index: 2,
        ),
        ElevatedButton(
          onPressed: () => Get.to(() => CartScreen()),
          child: const Text('go to Cart'),
        )
      ])),
    );
  }
}

class CartScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("your cart"),
        ),
        body: Column(children: [
          Cartproducts(),
          CartTotal(),
        ]));
  }
}
