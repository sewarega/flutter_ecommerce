import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cart_controller.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text('TotalPrice',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      const SizedBox(
        width: 20,
      ),
      Text('${controller.total}',
          style: const TextStyle(fontWeight: FontWeight.bold))
    ]);
  }
}
