import 'package:flutter/material.dart';
import 'package:clone_nike/components/shoe_tile.dart';
import 'package:clone_nike/models/shoes.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // Sample shoes data for Trending
  final List<Shoe> trendingShoes = [
    Shoe(
      name: 'Air Force 1',
      price: '4300',
      imagePath: 'assets/images/nike_airforce.png',
      description:
          'The shine lives on in the original basketball shoe. When comfort on the court meets cool style off the court.',
    ),
    Shoe(
      name: 'Air Max Ishod',
      price: '4300',
      imagePath: 'assets/images/nike_airmax.png',
      description:
          'The Air Max Ishod fuses elements from iconic 90s basketball shoes.',
    ),
    Shoe(
      name: 'Air Jordan 1',
      price: '5400',
      imagePath: 'assets/images/nike_jordan1_low.png',
      description: 'The Air Jordan 1 Low OG reimagines the classic sneaker.',
    ),
    Shoe(
      name: 'Killshot 2',
      price: '3600',
      imagePath: 'assets/images/nike_killshot2.png',
      description: 'Inspired by the original low-profile tennis shoe.',
    ),
    Shoe(
      name: 'SB Malor',
      price: '2700',
      imagePath: 'assets/images/nike_sbmalor.png',
      description:
          'Designed for beginner skaters who want a shoe that can handle hours of practice.',
    ),
  ];

  // New arrivals shoes data
  final List<Shoe> newArrivalShoes = [
    Shoe(
      name: 'Cygnal',
      price: '6600',
      imagePath: 'assets/images/nike_Cygnal.png',
      description:
          'Cygnal takes your favorite hiking pair and creates a city-ready design.',
    ),
    Shoe(
      name: 'V2K ',
      price: '5700',
      imagePath: 'assets/images/nike_v2k_run.png',
      description:
          'This winter V2K adds a GORE-TEX upper to the style of an early 2000s running shoe.',
    ),
    Shoe(
      name: 'Air Max Dn SE',
      price: '6300',
      imagePath: 'assets/images/nike_airmax_dnse.png',
      description:
          'Introducing a new generation of Air technology, the Air Max Dn. It features a Dynamic Air system with dual pressure piping for a responsive feel with every step.',
    ),
    Shoe(
      name: 'Pegasus 41',
      price: '5400',
      imagePath: 'assets/images/nike_zoom_pegasus41.png',
      description:
          'The responsive cushioning in Pegasus gives you a powerful ride for everyday road running.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Center(
                child: Text(
                  'What you do is up to you. Just Do It',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Trending!!!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  GestureDetector(
                    child: const Text('See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                    onTap: () {
                      // Implement navigation to the "See all" page
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 500, // Explicit height for the horizontal ListView
              child: ListView.builder(
                itemCount: trendingShoes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ShoeTile(shoe: trendingShoes[index]);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
              child: Divider(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('New Arrival',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  GestureDetector(
                    child: const Text('See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                    onTap: () {
                      // Implement navigation to the "See all" page
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 500, // Explicit height for the horizontal ListView
              child: ListView.builder(
                itemCount: newArrivalShoes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ShoeTile(shoe: newArrivalShoes[index]);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
              child: Divider(color: Colors.grey),
            ),

            // Weekly Sneakers
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Weekly Sneakers',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  GestureDetector(
                    child: const Text('See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                    onTap: () {
                      // Implement navigation to the "See all" page
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/nike_snkrsofweek.png', // replace this with the actual path
                        height: 300,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Weekly Sneakers',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button press
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                              child: const Text(
                                'Shop now',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
              child: Divider(color: Colors.grey),
            ),
            // Jordan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Jordan Product',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  GestureDetector(
                    child: const Text('See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                    onTap: () {
                      // Implement navigation to the "See all" page
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/nike_pants.png', // replace this with the actual path
                        height: 300,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Jordan',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button press
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                              child: const Text(
                                'Shop now',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
