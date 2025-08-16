import 'package:e_commerce_app/items/cart_tile.dart';
import 'package:e_commerce_app/items/empty_cart.dart';
import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'My Cart',
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          value.getShoeCart().isEmpty? EmptyCart() : Expanded(
            child: ListView.builder(
              itemCount: value.getShoeCart().length ,
              itemBuilder:(context, index) {
                Shoe shoe = value.getShoeCart()[index];
                return CartTile(shoe: shoe,);
              },
            ), 
          ),
        ],
      ),
    );
  }
}