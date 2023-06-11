import 'package:flutter_app/productmodel.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  void addproduct(product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
      "product Added",
      "you have added the ${product.name} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  void removeproduct(product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
    Get.snackbar(
      "product remove",
      "you have remove the ${product.name} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  get products => _products;
  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toString();
  get total => _products.entries
      // ignore: avoid_types_as_parameter_names
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
