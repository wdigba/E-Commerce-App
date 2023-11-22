import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Zoom SuperRep 4 Next Nature',
        price: '139,99',
        imagePath:
            'lib/images/zoom-superrep-4-next-nature-workout-schuh-fur-Vgv4kS.png',
        description: 'workout'),
    Shoe(
        name: 'Nike SB Force 58',
        price: '74,99',
        imagePath: 'lib/images/30ceab71-d94b-4cef-a768-d41bef344002.png',
        description: 'skateboarding'),
    Shoe(
        name: 'Giannis Immortality 3 "5 The Hard Way"',
        price: '89,99',
        imagePath: 'lib/images/f1abf4d8-42a5-49ba-aab6-a6ab5e33886a.png',
        description: 'basketball'),
    Shoe(
        name: 'Nike Air Max Plus',
        price: '189,99',
        imagePath: 'lib/images/fe9566a9-0f21-40b8-81c0-d37a6b9de0db.png',
        description: 'street style')
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
