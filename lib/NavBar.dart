import 'package:flutter/material.dart';
import 'package:ulam_app/screens/settingsScreen.dart';
import 'package:ulam_app/screens/loginScreen.dart';
import 'package:ulam_app/screens/servicesScreen.dart';
import 'package:ulam_app/screens/profileScreen.dart';
import 'package:ulam_app/screens/likesScreen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Ulams Name'),
            accountEmail: const Text('ulams@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
              child: Image.network(
              'https:/jkk',
              width: 90,
              height:90,
              fit: BoxFit.cover,
              ),
              ),
            ),
              decoration: const BoxDecoration(
              color: Colors.redAccent,
              image: DecorationImage(
                image: NetworkImage(
                  'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg'
                ),
                fit: BoxFit.cover,
 ),
              ),
             ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Likes'),
              onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LikesPage(),
              ),
            );
          },
              trailing:ClipOval(
              child: Container(
                color:Colors.red,
                width:20,
                height:20,
                child:const Center(
                child: Text('9',
                style: TextStyle(
                  color:Colors.white,
                  fontSize:12,
                  ),
                ),
              ),
            ),
          ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Sign Up'),
              onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Login'),
              onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Login as admin'),
              onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Hire a surveyor'),
              onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ServicesPage(),
              ),
            );
          },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            );
          },
            ),           
        ],
      ),
    );
  }
}