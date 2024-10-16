import 'package:clone_nike/models/shoes.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Force 1',
      price: '4300',
      imagePath: 'assets/images/nike_airforce.png',
      description:
          'The shine lives on in the original basketball shoe. When comfort on the court meets cool style off the court.',
    ),
    // Add more shoes as needed
    Shoe(
      name: 'Air Max Ishod',
      price: '4300',
      imagePath: 'assets/images/nike_airmax.png',
      description:
          'The Air Max Ishod fuses elements from iconic 90s basketball shoes and is built to withstand all the toughness you need when you are on your hardest skate.',
    ),

    Shoe(
      name: 'Air Jordan 1 ',
      price: '5400',
      imagePath: 'assets/images/nike_jordan1_low.png',
      description:
          'The Air Jordan 1 Low OG reimagines the classic sneaker with new colorways and textures, while premium materials and accents keep the all-time favorite fresh.',
    ),

    Shoe(
      name: 'Killshot 2',
      price: '3600',
      imagePath: 'assets/images/nike_killshot2.png',
      description:
          'Inspired by the original low-profile tennis shoe, this version of the Nike Killshot 2 combines genuine leather, synthetic leather, durable materials and nylon for a fresh take on the old-school look. And its not a shoe.',
    ),

    Shoe(
      name: 'SB Malor',
      price: '2700',
      imagePath: 'assets/images/nike_sbmalor.png',
      description:
          'Lets break this shoe down! The SB Malor is designed for beginner skaters who want a shoe that can handle hours of practice.',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  void clearCart() {}
}
