import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/createbill.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/onlineorder.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/orderprogress.dart';
import 'package:pharmacy_bioledge/pages/Order%20Screen/report.dart';




class Orders extends StatefulWidget with NavigationStates {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  int _currentindex = 0;
  final tabs = [
    CreateBill(),
    OnlineOrder(),
    OrderProgress(),
    Report(),
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
              
              icon: Icon(Icons.blur_circular),
              title: Text('Create billing'),
              backgroundColor:Color(0xFFFFA726),
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud_circle),
              title: Text('Online orders'),
              backgroundColor:Color(0xFFFFA726),
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Order progress '),
              backgroundColor: Color(0xFFFFA726),
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.router),
              title: Text('Report '),
              backgroundColor: Color(0xFFFFA726),
              )
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