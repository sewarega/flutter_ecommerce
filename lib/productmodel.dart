// ignore: camel_case_types
class product {
  final String name;
  final double price;
  final String imageUrl;
  const product(
      {required this.name, required this.price, required this.imageUrl});
//   static product formSnaphot(DocumentSnapshot snap) {
//     product product =
//         product(name: snap['name'], price: snap['price'], imageUrl: imageUrl);
//     return product;
//   }
// }
  static const List<product> products = [
    product(
        name: 'Red Shirt',
        price: 599,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
    product(
        name: 'Trousers',
        price: 499,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg'),
    product(
      name: 'Yellow Scarf',
      price: 399,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    product(
        name: 'A Pan',
        price: 299,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg'),
  ];

  static formSnaphot(doc) {}
}
