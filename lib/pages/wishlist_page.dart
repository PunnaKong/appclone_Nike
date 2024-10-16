import 'package:clone_nike/models/shoes.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _CartPageState();
}

class _CartPageState extends State<WishlistPage> {
  // Sample cart items (replace with your actual data model)
  final List<Shoe> wishlistItems = [
    Shoe(
      name: 'Air Force 1',
      price: '4300',
      imagePath: 'assets/images/nike_airforce.png',
      description:
          'The shine lives on in the original basketball shoe. When comfort on the court meets cool style off the court.',
    ),
    Shoe(
      name: 'V2K ',
      price: '5700',
      imagePath: 'assets/images/nike_v2k_run.png',
      description: 'This winter V2K adds a GORE-TEX upper to the style of an early 2000s running shoe.',
    ),
    Shoe(
      name: 'Air Jordan 1',
      price: '5400',
      imagePath: 'assets/images/nike_jordan1_low.png',
      description:
          'The Air Jordan 1 Low OG reimagines the classic sneaker.',
    ),
    Shoe(
      name: 'Cygnal',
      price: '6600',
      imagePath: 'assets/images/nike_Cygnal.png',
      description: 'Cygnal takes your favorite hiking pair and creates a city-ready design.',
    ),
    Shoe(
      name: 'Air Max Dn SE',
      price: '6300',
      imagePath: 'assets/images/nike_airmax_dnse.png',
      description: 'Introducing a new generation of Air technology, the Air Max Dn. It features a Dynamic Air system with dual pressure piping for a responsive feel with every step.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Your Cart'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black, // Set text and icon color to black
      ),
      body: wishlistItems.isEmpty
          ? const Center(
              child: Text(
                'Your cart is empty.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: wishlistItems.length,
                    itemBuilder: (context, index) {
                      // Access each Shoe object and display its details
                      Shoe shoe = wishlistItems[index];
                      return ListTile(
                        leading: Image.asset(
                          shoe.imagePath, // Display the shoe image
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          shoe.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'THB ${shoe.price}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            // Implement remove item from cart functionality
                            setState(() {
                              wishlistItems.removeAt(index);
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
