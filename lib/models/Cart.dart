import 'package:flutter/material.dart';

import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItem;
  final double price;

  Cart({@required this.product, this.price, @required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], price: demoProducts[0].price, numOfItem: 2),
  Cart(product: demoProducts[1], price: demoProducts[1].price, numOfItem: 1),
  Cart(product: demoProducts[2], price: demoProducts[2].price, numOfItem: 1),
];
