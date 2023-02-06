import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:ulam_app/NavBar.dart';
import 'package:url_launcher/url_launcher.dart';

class Links extends StatefulWidget {
  const Links({super.key});

  @override
  State<Links> createState() => _LinksState();
}

class _LinksState extends State<Links> {
  var _hover = false;
  late final _recogniser = TapGestureRecognizer()..onTap = _onTap;

  void _onTap() {
    launchUrl(Uri.parse('https://mlhud.go.ug/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Resources'),
        leading: const Icon(Icons.read_more_outlined),
      ),
      body: ListView(
        children: [
          Row(
            children: const <Widget>[
              Image(
                  image: AssetImage('logo.jpg'),
                  height: 100,
                  width: 200,
                  fit: BoxFit.fill),
              Expanded(
                child: Text(
                    "Use these resources and links to learn more about owning, buying and selling land."),
              ),
            ],
          ),
          InkWell(
            child: SelectableText.rich(
              TextSpan(
                text: 'Ministry of Lands',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
                mouseCursor: SystemMouseCursors.click,
                onEnter: ((event) => _hover = true),
                onExit: (event) => _hover = false,
                recognizer: _recogniser,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
