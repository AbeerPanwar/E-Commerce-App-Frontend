import 'package:e_commerce_app/items/shoe_tile.dart';
import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addCart(shoe);

    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey.shade900,
        title: Text(
          'Successfully Added!',
          style: TextStyle(
            color: Colors.grey.shade300,
          ),
        ),
        content: Text(
          'Check your cart..',
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade100,),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30),),
    );
    return Consumer<Cart>(builder:(context, value, child) => Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Shoes \nCollection',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: TextField(
                  cursorColor: Colors.grey.shade900,
                  decoration: InputDecoration(
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    prefixIcon: Icon(Icons.search,color: Colors.grey.shade500,)
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 5,),
        Text(
          'everyone files...  some fly higher than others',
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 16,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 25,),
              child: Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),  
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15,),
              child: Text(
                'See all',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 1,),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder:(context, index) {
              Shoe shoe = value.getShoeShop()[index]; 
              return ShoeTile(
                shoe: shoe, 
                onTap: () => addToCart(shoe)
              );
            },
          ), 
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Divider(
            color: Colors.grey.shade300,
          ),
        )
      ],
    ),);
  }

}