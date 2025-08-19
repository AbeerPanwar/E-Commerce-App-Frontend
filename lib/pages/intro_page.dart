import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/nike logo black.jpg',
              color: Colors.grey.shade300,
              colorBlendMode: BlendMode.darken,
              height: 240,
              scale: 3,
            ),
          ),
          SizedBox(height: 70,),
          Text(
            'Just do it',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22, 
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Brand new sneakers and custom kicks made with premium quality',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 35,),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'homepage');
            } ,
            child: Container(
              width: MediaQuery.sizeOf(context).width - 80,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  'Shop Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}