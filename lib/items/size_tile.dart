import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SizeTile extends StatefulWidget {
  final Shoe shoe;
  const SizeTile({
    super.key,
    required this.shoe,
  });


  @override
  State<SizeTile> createState() => _SizeTileState();
}

class _SizeTileState extends State<SizeTile> {

  final List<String> sizes = ['7','8','9','10','11',];
  late String selectedSize;


  @override
  void initState() {
    super.initState();
    selectedSize = '0';
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) =>  SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, 
        itemCount: sizes.length,
        itemBuilder:(context, index) {
          final size = sizes[index];
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedSize = size;
                  Provider.of<Cart>(context, listen: false).addSize(widget.shoe ,selectedSize);
                });
              },
              child: Chip(
                padding: EdgeInsets.symmetric(horizontal: 10,),
                backgroundColor: selectedSize == size? Color.fromRGBO(254, 206, 1, 1) : Colors.grey.shade200,
                side: BorderSide(
                  color: selectedSize == size? Color.fromRGBO(254, 206, 1, 1) : Colors.grey.shade200,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                label: Text(
                  size,
                ),
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          );
        },
      ),
    ),); 
  }
}