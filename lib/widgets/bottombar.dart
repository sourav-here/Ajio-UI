import 'package:ajio/screens/account_screen.dart';
import 'package:ajio/screens/bag_screen.dart';
import 'package:ajio/screens/home_screen.dart';
import 'package:ajio/screens/store_screen.dart';
import 'package:ajio/screens/wishlist_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
 List  screens = [
    const HomeScreen(),
    const StoreScreen(),
    const AccountScreen(),
    const WishListScreen(),
    const BagScreen(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        showUnselectedLabels: true,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.storefront_sharp), label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Bag'),
        ],
      ),
    );
  }
}