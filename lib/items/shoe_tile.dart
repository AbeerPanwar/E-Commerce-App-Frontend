import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  final void Function()? onTap;
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, bottom: 10),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,  
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
              shoe.imagePath,
              height: shoe.imageSize,
              color: Colors.grey.shade200,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    Text(
                      '\$ ${shoe.price}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10),),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.add,
                    size: 25,
                    color: Colors.grey.shade300,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}