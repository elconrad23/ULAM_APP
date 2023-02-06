import 'package:flutter/material.dart';
import 'package:ulam_app/screens/landSaleScreen.dart';
import 'package:ulam_app/NavBar.dart';

class LandPurchase extends StatefulWidget {
  const LandPurchase({super.key});

  @override
  State<LandPurchase> createState() => _LandPurchaseState();
}

class _LandPurchaseState extends State<LandPurchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
      title: const Text('Settings'),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: true,
        
      ),
           body: ListView(
            children: [
              Row(
                children: const <Widget>[
                  Image(image: AssetImage ('logo.jpg'), 
                  height:100, 
                  width:200,
                  fit: BoxFit.fill),
              Expanded(
                child: Text(
                  "Browse here for land on the market."),
              ),
            ],
       ),
        ],
      ),
    );
  }
}