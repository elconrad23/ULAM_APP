import 'package:flutter/material.dart';
import 'package:ulam_app/NavBar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavBar(),

  appBar: AppBar( 
        title: const Text('Settings'),
        backgroundColor: Colors.red,
        leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.of(context).pop(),
            ),
            automaticallyImplyLeading: true,      
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
              'Settings',
              style: TextStyle(fontSize: 25.0),
              ),
            ),
            const SizedBox(height: 10, ),
          ],
      ),
    );
  }
}