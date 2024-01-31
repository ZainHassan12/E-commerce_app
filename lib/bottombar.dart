import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edens/screen/cart.dart';
import 'package:edens/screen/categories.dart';
import 'package:edens/screen/homepage.dart';
import 'package:edens/screen/profile.dart';
import 'package:edens/string.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  final items = const[
    Icon(Icons.home,  size: 30, color: Colors.white,),
    Icon(Icons.category, size: 30, color: Colors.white,),
    Icon(Icons.shopping_cart,  size: 30, color: Colors.white,),
    Icon(Icons.person,  size: 30, color: Colors.white,)
  ];

  int index=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        items: items,
        index: index,
        backgroundColor: Colors.transparent,
        color: golden,
        onTap: (selectedIndex){
          setState(() {
            index = selectedIndex;
          });
        },
        animationDuration: const Duration(milliseconds: 200),
      ),

      body: Container(
        child: getSelectedWidget(index: index),
      ),
    );
  }
  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = const HomePage();
        break;

      case 1:
        widget = const CategoriesPage();
        break;

      case 2:
        widget = const CartPage();
        break;

      case 3:
        widget = const UserProfile();

      default:
        widget = const HomePage();
        break;
    }
    return widget;
  }
}