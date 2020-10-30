import 'dart:ui';

import 'package:flutter/material.dart';


class OnlineOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(19),
          child:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Orders',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),),
                Row(children: [
                  Icon(Icons.calendar_today),
                  SizedBox(width:5),
                  Text('September 12',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                  ),
                  )
                ],)
              ],
            ),
            SizedBox(height: 18,),
            Row(
              children: [
                Text('Online orders',style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                ),),
              ],
            ),
            
           

          ],
        ),),
      ),
    );
  }
}