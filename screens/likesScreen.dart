import 'package:flutter/material.dart';
import 'package:ulam_app/NavBar.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Liked'),
        leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: true,
        // trailing: 
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
              "Plots you saved."),
          ),
        ],
       ),
        ],
      ),
    );
  }
}