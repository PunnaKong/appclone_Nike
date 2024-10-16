import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture and Name
            Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/posty.jpg'),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pre Malone',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {
                        // Edit profile functionality
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Edit Profile'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),

            // Menu Options
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuOption(icon: Icons.shopping_bag, label: 'Orders'),
                MenuOption(icon: Icons.beach_access, label: 'Pass'),
                MenuOption(icon: Icons.event, label: 'Events'),
                MenuOption(icon: Icons.settings, label: 'Settings'),
              ],
            ),
            const SizedBox(height: 40),

            // Inbox Section
            const Text(
              'Inbox',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              'View Messages',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Rewards Section
            const Text(
              'Your Nike Member Rewards',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 5),
            const Text(
              '2 available',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 40),

            // Following Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Following (6)', // Update this count as needed
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    // Edit following functionality
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey, // Set text color to grey
                  ),
                  child: const Text('Edit'),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Grid of Following Images
            Expanded(
              child: GridView.count(
                crossAxisCount: 3, // 3 images in a row
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(2, (index) {
                  // Replace each asset with your actual images
                  final images = [
                    'assets/images/nike_football.jpg',
                    'assets/images/nike_basketball.jpg',
                  ];
                  return GestureDetector(
                    onTap: () {
                      // Handle click on following item
                    },
                    child: Image.asset(
                      images[index], // Access each image from the list
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuOption extends StatelessWidget {
  final IconData icon;
  final String label;

  const MenuOption({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
