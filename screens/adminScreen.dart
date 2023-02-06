import 'package:flutter/material.dart';
import 'package:ulam_app/NavBar.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
      title: const Text('Admin'),
      leading: const Icon(Icons.admin_panel_settings),
      ),
    );
  }
}