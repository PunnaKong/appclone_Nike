import 'package:clone_nike/models/shoes.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe; // Use final for immutable properties
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    const double tileWidth = 280.0;
    const EdgeInsetsGeometry margin = EdgeInsets.only(left: 25);
    
    return Container(
      margin: margin,
      width: tileWidth,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Show image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),
          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center, // Center the description
            ),
          ),
          // Price and buttons
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Shoe name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Baht ${shoe.price}',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
               // Buttons
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      color: Colors.black,
                      tooltip: 'Add to cart',
                      onPressed: () {
                        // Implement add to cart action
                      },
                    ),
                    const SizedBox(width: 10), // Space between buttons
                    // Favorite button
                    IconButton(
                      icon: const Icon(Icons.favorite_border),
                      color: Colors.red,
                      onPressed: () {
                        // Implement favorite action
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}