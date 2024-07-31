import 'package:flutter/material.dart';
import '../models/product.dart';
import '../providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final Product product;

  CartItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(product.image),
      title: Text(product.title),
      subtitle: Text('\$${product.price}'),
      trailing: IconButton(
        icon: Icon(Icons.remove_shopping_cart),
        onPressed: () {
          Provider.of<CartProvider>(context, listen: false).removeFromCart(product);
        },
      ),
    );
  }
}
