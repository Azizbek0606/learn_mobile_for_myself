import 'package:flutter/material.dart';

class CustomerNavbar extends StatefulWidget {
  @override
  _CustomerNavbarState createState() => _CustomerNavbarState();
}

class _CustomerNavbarState extends State<CustomerNavbar> {
  int _selectedIndex = 0;  // Joriy tanlangan sahifa indeksi

  bool isLoggedIn = true;  // Foydalanuvchi holatini tekshirish (demo uchun)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Navigatsiya logikasini shu yerda qo'shing, masalan:
      // if (index == 1) {
      //   Navigator.pushNamed(context, isLoggedIn ? '/admin' : '/login');
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Color(0xFF132123),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(isLoggedIn ? Icons.dashboard : Icons.login, color: Colors.white),
          label: isLoggedIn ? 'Admin' : 'Login',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
    );
  }
}
