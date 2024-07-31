import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartProvider.cartItems.length,
              itemBuilder: (context, index) {
                return CartItem(product: cartProvider.cartItems[index]);
              },
            ),
          ),
          Text('Total: \$${cartProvider.totalPrice.toStringAsFixed(2)}'),
          ElevatedButton(
            onPressed: () {
              // Implement checkout functionality
            },
            child: Text('Checkout'),
          ),
        ],
      ),
    );
  }
}
