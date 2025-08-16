import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
            'Nike Shoes App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24, 
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'The Nike Shoes E-Commerce App is a modern shopping platform designed for sneaker enthusiasts and athletes who want quick, personalized, and hassle-free access to Nike\'s latest footwear collections. With a sleek interface and seamless navigation, users can browse, and purchase Nike shoes anytime, anywhere.',
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
              Navigator.pop(context);
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
                  'Continue Shopping',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}