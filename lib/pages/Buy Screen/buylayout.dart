import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/cart.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/myorders.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/newarrival.dart';
import 'package:pharmacy_bioledge/pages/Buy%20Screen/shop.dart';






class BuyL extends StatefulWidget with NavigationStates {
  @override
  _BuyLState createState() => _BuyLState();
}

class _BuyLState extends State<BuyL> {

  int _currentindex = 0;
  final tabs = [
  Shop(),
   MyOrders(),
   NewArrival(),
   Cart() 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:tabs[_currentindex] ,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
              
              icon: Icon(Icons.menu),
              title: Text('Shop'),
              backgroundColor:Color(0xFFFFA726),
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud_download),
              title: Text('My orders'),
              backgroundColor:Color(0xFFFFA726),
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('New arrival'),
              backgroundColor: Color(0xFFFFA726),
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Cart'),
              backgroundColor: Color(0xFFFFA726),
              ),
              
          ],
          onTap: (index){
            setState(() {
              _currentindex = index;
            });
          },
          ),
    );
  }
}