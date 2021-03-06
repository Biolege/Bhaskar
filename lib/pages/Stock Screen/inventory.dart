import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/My Medicines/mymedicines.dart';
import 'package:pharmacy_bioledge/pages/Stock%20Screen/StockWarning/My%20Medicines/stockwarn.dart';


class Inventory extends StatefulWidget {



  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(19),
          child:Column(
          children: [
            
            
            Row(
              children: [
                Text('Inventory',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),),
              ],
            ),
            SizedBox(height: 35,),
            GestureDetector(
           onTap: (){   pushNewScreen(context, screen: MyMedicines());},
              child: Padding(
                padding: const EdgeInsets.only(left:25),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: 10,),
                    Text('My Medicines',style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.w300
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                pushNewScreen(context, screen:StockWarning());
               
              },
              child: Padding(
                padding: const EdgeInsets.only(left:25),
                child: Row(
                  children: [
                    Icon(Icons.center_focus_strong),
                    SizedBox(width: 10,),
                    Text('Stock warning',style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.w300
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: Row(
                children: [
                  Icon(Icons.call_missed_outgoing),
                  SizedBox(width: 10,),
                  Text('Expiry manager',style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w300
                  ),),
                ],
              ),
            ),
            
           

          ],
        ),),
      ),
    );
  }
}