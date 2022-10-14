import 'package:flutter/material.dart';
import 'package:iconnect_app/views/home.dart';
import 'package:iconnect_app/views/pages/blogs.dart';
import 'package:iconnect_app/views/pages/peers.dart';
import 'package:iconnect_app/views/pages/projects.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        debugPrint('Home');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Home(
                      value: '',
                    )));
      } else if (_currentIndex == 1) {
        debugPrint('blog');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Blogs()));
      } else if (_currentIndex == 2) {
        debugPrint('projects');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Projects()));
      } else {
        debugPrint('profile');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Peers()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.purple,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.shifting,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.deepPurple),
        BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: 'Blog',
            backgroundColor: Colors.deepPurple),
        BottomNavigationBarItem(
            icon: Icon(Icons.computer_outlined),
            label: 'Projects',
            backgroundColor: Colors.deepPurple),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_search_outlined),
            label: 'Peers',
            backgroundColor: Colors.deepPurple),
      ],
    );
  }
}
