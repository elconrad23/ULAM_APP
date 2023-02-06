import 'package:flutter/material.dart';
import 'package:ulam_app/NavBar.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Services'),
        leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.of(context).pop(),
            ),
            automaticallyImplyLeading: true,      ),
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
              "Hire a surveyor."),
          ),
        ],
       ),
        ],
      ),
    );
  }
}