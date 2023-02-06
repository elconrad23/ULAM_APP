import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ulam_app/NavBar.dart';

  class Tips extends StatefulWidget with PreferredSizeWidget {
    @override
      final Size preferredSize;
    const Tips({Key? key}) : preferredSize = const Size.fromHeight(56.0), super(key: key);
     
    @override
    _TipsState createState() => _TipsState();
      }

class _TipsState extends State<Tips> {
       
final _firestore = FirebaseFirestore.instance;
List<double> landPrices = [];

@override
Widget build(BuildContext context) {
return Scaffold(  
  drawer: const NavBar(),

  appBar: AppBar( 
    title: const Text('Varieties of Tips',
            ),
          ),
body: Column(
children: <Widget>[
  Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(10),
    child: Image.asset('logo.jpg', height: 100,width:200),
  ),
          
  Container(
    padding: const EdgeInsets.all(20.0),
    child: const Text(
    'Land Purchase Tips',
    style: TextStyle(fontSize: 25.0),
    ),
  ),
const SizedBox(height: 10, ),
  ],
  ),
  );
  }
}

