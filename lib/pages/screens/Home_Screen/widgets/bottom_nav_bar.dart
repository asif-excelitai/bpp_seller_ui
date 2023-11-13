import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customHeightNavBar() {
  return Container(
    height: 58.99997, // Set your desired height here
    width: double.infinity, // Full width
    decoration: BoxDecoration(
      color: Colors.transparent,
      boxShadow: [BoxShadow(color: Colors.transparent)],
    ),
    child: BottomNavigationBar(
      // onTap: (){},
      // elevation: 0,
      // currentIndex: _selectedIndex,
      backgroundColor: Colors.transparent,
      elevation: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',

        ),
      ],
    ),
  );
}