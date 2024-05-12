import 'package:flutter/material.dart';
import 'package:shopping/admin.dart';
import 'package:shopping/login.dart';
import 'package:shopping/full_app.dart';
import 'package:shopping/logout.dart';

class CustomContainer extends StatelessWidget {
  final IconData iconData;
  final String label;
  final Color backgroundColor;
  final Color iconColor;
  final Color textColor;
  final VoidCallback onTap;

  const CustomContainer({
    Key? key,
    required this.iconData,
    required this.label,
    this.backgroundColor = const Color(0xFF132123),
    this.iconColor = Colors.white,
    this.textColor = Colors.white,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconData, color: iconColor),
            SizedBox(width: 8),
            Text(label, style: TextStyle(color: textColor, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class MyCustomNavbars extends StatelessWidget {
  List<Map<String, dynamic>> user_data;
  MyCustomNavbars(this.user_data);

  @override
  Widget build(BuildContext context) {
    List<Widget> menuItems = [];

    if (user_data[0]['logged_in']) {
      menuItems.add(
        Container(
          height: 70,
          child: CustomContainer(
            iconData: Icons.home,
            label: 'Home',
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FullApplication()));
            },
          ),
        ),
      );

      if (user_data[0]['who'] == "admin") {
        menuItems.add(
          Container(
            height: 70,
            child: CustomContainer(
              iconData: Icons.add_box,
              label: 'Add Product',
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminPage()));
              },
            ),
          ),
        );
      }

      // Logout tugmasi
      menuItems.add(
        Container(
          height: 70,
          child: CustomContainer(
            iconData: Icons.logout,
            label: 'Logout',
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogoutPage()));
            },
          ),
        ),
      );
    } else {
      menuItems.add(
        Container(
          height: 70,
          child: CustomContainer(
            iconData: Icons.home,
            label: 'Home',
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FullApplication()));
            },
          ),
        ),
      );

      menuItems.add(
        Container(
          height: 70,
          child: CustomContainer(
            iconData: Icons.login,
            label: 'Login',
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: menuItems,
    );
  }
}

