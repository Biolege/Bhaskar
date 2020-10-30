import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/bioledgemeds.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/importmed.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/inventory.dart';





class StockL extends StatefulWidget with NavigationStates {
  @override
  _StockLState createState() => _StockLState();
}

class _StockLState extends State<StockL > {

  int _currentindex = 0;
  final tabs = [
    Inventory(),
    ImportMeds(),
    BioledgeMeds(),
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
              title: Text('Inventory'),
              backgroundColor:Color(0xFFFFA726),
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud_download),
              title: Text('import meds'),
              backgroundColor:Color(0xFFFFA726),
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('bioledge meds'),
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