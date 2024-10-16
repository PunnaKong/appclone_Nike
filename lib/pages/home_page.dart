import 'package:flutter/material.dart';
import 'package:clone_nike/components/bottom_nav_bar.dart';
import 'package:clone_nike/pages/cart_page.dart';
import 'package:clone_nike/pages/profile_page.dart';
import 'package:clone_nike/pages/shop_page.dart';
import 'package:clone_nike/pages/wishlist_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final TextEditingController _searchController = TextEditingController();

  // List of products to search through
  final List<String> _products = [
    'Air Max Ishod',
    'Air Force 1',
    'Air Jordan 1',
    'Killshot 2',
    'SB Malor',
    'Cygnal',
    'V2K',
    'Air Max Dn SE',
    'Pegasus 41',
    // Add more product names as needed
  ];

  List<String> _filteredProducts = []; // To hold filtered results

  // List of pages for the bottom navigation bar
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
    const WishlistPage(),
    const ProfilePage(),
  ];

  void _onTapChange(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  void _performSearch() {
    String searchTerm = _searchController.text.toLowerCase();
    setState(() {
      if (searchTerm.isEmpty) {
        _filteredProducts.clear(); // Clear results if search term is empty
      } else {
        _filteredProducts = _products
            .where((product) => product.toLowerCase().contains(searchTerm))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              'Hi, Pre Malone',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            const Spacer(),
            Container(
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: _searchController,
                onChanged: (_) =>
                    _performSearch(), // Trigger search on text change
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: _performSearch,
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // Display filtered products in a dropdown-like list
          if (_filteredProducts.isNotEmpty)
            Container(
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey.shade400)),
                color: Colors.white,
              ),
              child: ListView.builder(
                shrinkWrap:
                    true, // Allow ListView to take only the needed height
                physics:
                    const NeverScrollableScrollPhysics(), // Disable scrolling in the dropdown
                itemCount: _filteredProducts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_filteredProducts[index]),
                    onTap: () {
                      // Action on tapping a product
                      print('Selected product: ${_filteredProducts[index]}');
                      _searchController.text = _filteredProducts[
                          index]; // Optionally fill the search box
                      setState(() {
                        _filteredProducts
                            .clear(); // Clear results after selection
                      });
                    },
                  );
                },
              ),
            ),
          const SizedBox(height: 8), // Spacing
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTapChange: _onTapChange,
        selectedIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
      ),
    );
  }
}
