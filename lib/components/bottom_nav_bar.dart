import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  final Function(int) onTapChange;
  final int selectedIndex;

  const MyBottomNavBar({
    required this.onTapChange,
    required this.selectedIndex,
    super.key, required Color selectedItemColor, required Color unselectedItemColor,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.shop, color: selectedIndex == 0 ? Colors.black : Colors.grey),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cases_sharp, color: selectedIndex == 1 ? Colors.black : Colors.grey),
          label: 'Bag',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: selectedIndex == 2 ? Colors.black : Colors.grey),
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: selectedIndex == 3 ? Colors.black : Colors.grey),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onTapChange,
      backgroundColor: Colors.white, 
      selectedItemColor: Colors.black, 
      unselectedItemColor: Colors.grey, 
      type: BottomNavigationBarType.fixed, 
    );
  }
}
