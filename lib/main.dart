import 'package:flutter/material.dart';
import 'package:clone_nike/pages/intro_page.dart'; // Import the intro page
import 'package:provider/provider.dart';
import 'package:clone_nike/models/cart.dart'; // Import Cart model

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(), // Provide the Cart model
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity:
              VisualDensity.adaptivePlatformDensity, // Improve visual density
        ),
        home: const IntroPage(), // Set IntroPage as the home page
        debugShowCheckedModeBanner: false, // Hide debug banner in release mode
      ),
    );
  }
}
