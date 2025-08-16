import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 200,
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        color: Colors.grey.shade200,
        child: Column(
          children: [
            Image.asset(
              'assets/images/emptycart.png',
              height: 150,
            ),
            Text(
              'Your Cart is Empty',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade800,
              ),
            ),
          ]
        ),
      ),
    );
  }
}