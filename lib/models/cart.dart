import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(name: 'Nike Dunk High Retro',
        price: '129,99',
        imagePath: 'lib/images/99486859-0ff3-46b4-949b-2d16af2ad421.png',
        description: 'mega'),
    Shoe(name: 'Nike SB Force 58',
        price: '74,99',
        imagePath: 'lib/images/30ceab71-d94b-4cef-a768-d41bef344002.png',
        description: 'wow'),
    Shoe(name: 'Giannis Immortality 3 "5',
        price: '89,99',
        imagePath: 'lib/images/f1abf4d8-42a5-49ba-aab6-a6ab5e33886a.png',
        description: 'omg'),
    Shoe(name: 'Nike Air Max Plus',
        price: '189,99',
        imagePath: 'lib/images/fe9566a9-0f21-40b8-81c0-d37a6b9de0db.png',
        description: 'super')
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}