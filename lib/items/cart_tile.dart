import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartTile extends StatefulWidget {
  final Shoe shoe;
  const CartTile({
    super.key, 
    required this.shoe
  });

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {

  void deleteFromCart(){
    Provider.of<Cart>(context, listen: false).removeCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10,),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: ListTile(
          leading: Image.asset(
            widget.shoe.imagePath,
            color: Colors.grey.shade200,
            colorBlendMode: BlendMode.darken,
          ),
          title: Text(
            widget.shoe.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
          subtitle: Text(
            '\$ ${widget.shoe.price}',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade500,
            ),
          ),
          trailing: IconButton(onPressed: () => deleteFromCart(), icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}