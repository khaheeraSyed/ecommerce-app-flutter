import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/product_detail_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetailScreen(product: product)),
        );
      },
      child: Card(
        child: Column(
          children: [
            Image.network(product.image),
            Text(product.title),
            Text('\$${product.price}'),
            Text('${product.rating} ★'),
          ],
        ),
      ),
    );
  }
}
