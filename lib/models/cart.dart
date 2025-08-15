import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  
  List<Shoe> shoeShop = [
      Shoe(
        description: 'The forward-thinking design of his latest signature shoe.',
        name: 'Zoom Freak',
        price: '249',
        imagePath: 'assets/images/Zoom freak.jpg', 
        imageSize: 300,
      ),
      Shoe(
        description: 'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court',
        name: 'Air Jordan',
        price: '289',
        imagePath: 'assets/images/Air Jordan.jpg', 
        imageSize: 280,
      ),
      Shoe(
        description: 'A secure midfoot strap is suited for scoring binges and defensive stands, so that you can lock in and keep winning',
        name: 'KD Treys', 
        price: '299',
        imagePath: 'assets/images/KD Treys.jpg', 
        imageSize: 280,
      ),
      Shoe(
        description: 'Bouncy cushioning is paired with soft yet supportive foam for responsiveness and smooth heel to toe transition',
        name: 'Kyrie 6',
        price: '329',
        imagePath: 'assets/images/kyrie 6.jpg', 
        imageSize: 280,
      ),
  ];

  List<Shoe> shoeCart = [];

  List<Shoe> getShoeShop(){
    return shoeShop;
  }

  List<Shoe> getShoeCart(){
    return shoeCart;
  }

  void addCart(Shoe shoe){
    shoeCart.add(shoe);
    notifyListeners();
  }

  void removeCart(Shoe shoe){
    shoeCart.remove(shoe);
    notifyListeners();
  }
}