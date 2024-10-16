import 'package:clone_nike/models/shoes.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Sample cart items (replace with your actual data model)
  final List<Shoe> cartItems = [
    Shoe(
      name: 'Cygnal',
      price: '6600',
      imagePath: 'assets/images/nike_Cygnal.png',
      description: 'Cygnal takes your favorite hiking pair and creates a city-ready design.',
    ),
    Shoe(
      name: 'Killshot 2',
      price: '3600',
      imagePath: 'assets/images/nike_killshot2.png',
      description:
          'Inspired by the original low-profile tennis shoe.',
    ),
    Shoe(
      name: 'Air Max Dn SE',
      price: '6300',
      imagePath: 'assets/images/nike_airmax_dnse.png',
      description: 'Introducing a new generation of Air technology, the Air Max Dn. It features a Dynamic Air system with dual pressure piping for a responsive feel with every step.',
    ),
    Shoe(
      name: 'Pegasus 41',
      price: '5400',
      imagePath: 'assets/images/nike_zoom_pegasus41.png',
      description: 'The responsive cushioning in Pegasus gives you a powerful ride for everyday road running.',
    ),
     Shoe(
      name: 'SB Malor',
      price: '2700',
      imagePath: 'assets/images/nike_sbmalor.png',
      description:
          'Designed for beginner skaters who want a shoe that can handle hours of practice.',
    ),
  ];

  // Sample shipping cost (you can change it dynamically later)
  final double shippingCost = 0; // Set to 0 for free shipping

  // Calculate the subtotal
  double calculateSubtotal() {
    double subtotal = 0;
    for (var item in cartItems) {
      subtotal += double.parse(item.price); // Parse the price to a double
    }
    return subtotal;
  }

  // Calculate the total (subtotal + shipping)
  double calculateTotal() {
    return calculateSubtotal() + shippingCost;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Your Cart'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black, // Set text and icon color to black
      ),
      body: cartItems.isEmpty
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
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      Shoe shoe = cartItems[index];
                      return ListTile(
                        leading: Image.asset(
                          shoe.imagePath,
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
                            setState(() {
                              cartItems.removeAt(index);
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Subtotal',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'THB ${calculateSubtotal().toStringAsFixed(2)}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Shipping',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            shippingCost == 0 ? 'Standard - Free' : 'THB ${shippingCost.toStringAsFixed(2)}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'THB ${calculateTotal().toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          // Implement checkout functionality
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 15,
                          ),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text(
                          'Checkout',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
