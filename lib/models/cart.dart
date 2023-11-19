import 'package:e_commerce_app/models/shoe.dart';

class Cart {
  List<Shoe> shoeShop = [
    Shoe(name: 'zoom',
        price: '70',
        imagePath: 'lib/images/99486859-0ff3-46b4-949b-2d16af2ad421.png',
        description: 'mega'),
    Shoe(name: 'idk',
        price: '120',
        imagePath: 'lib/images/30ceab71-d94b-4cef-a768-d41bef344002.png',
        description: 'wow'),
    Shoe(name: 'shesh',
        price: '40',
        imagePath: 'lib/images/f1abf4d8-42a5-49ba-aab6-a6ab5e33886a.png',
        description: 'omg'),
    Shoe(name: 'dead',
        price: '230',
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
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}