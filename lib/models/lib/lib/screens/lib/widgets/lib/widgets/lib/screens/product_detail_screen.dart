import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Column(
        children: [
          Image.network(product.image),
          Text(product.title),
          Text('\$${product.price}'),
          Text(product.description),
          Text('${product.rating} ★'),
          ElevatedButton(
            onPressed: () {
              // Add to cart functionality
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
