import 'package:flutter/material.dart';
import 'package:iconnect_app/components/getstarted.dart';
import 'package:iconnect_app/views/pages/blogs.dart';
import 'package:iconnect_app/views/pages/groups.dart';
import 'package:iconnect_app/views/pages/mentors.dart';
import 'package:iconnect_app/views/pages/projects.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({super.key});

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .6,
      backgroundColor: Colors.deepPurple,
      child: SafeArea(
        child: Column(
          children: [
            const Text(
              'Kennedy muthuri',
              style: TextStyle(color: Colors.white, fontFamily: 'monospace'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Muthurikennedy@Gmail.com',
              style: TextStyle(color: Colors.white, fontFamily: 'monospace'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white, fontFamily: 'monospace'),
              ),
              onTap: null,
            ),
            ListTile(
              leading: const Icon(
                Icons.group,
                color: Colors.white,
              ),
              title: const Text(
                'Groups',
                style: TextStyle(color: Colors.white, fontFamily: 'monospace'),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Groups()));
              },
            ),
            const ListTile(
              leading: Icon(
                Icons.join_full_sharp,
                color: Colors.white,
              ),
              title: Text(
                'Teams',
                style: TextStyle(color: Colors.white, fontFamily: 'monospace'),
              ),
              onTap: null,
            ),
            ListTile(
              leading: const Icon(
                Icons.show_chart_outlined,
                color: Colors.white,
              ),
              title: const Text(
                'Mentors',
                style: TextStyle(color: Colors.white, fontFamily: 'monospace'),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Mentors()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.upcoming_outlined,
                color: Colors.white,
              ),
              title: const Text(
                'Projects',
                style: TextStyle(color: Colors.white, fontFamily: 'monospace'),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Projects()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.note_add_outlined,
                color: Colors.white,
              ),
              title: const Text(
                'Blogging',
                style: TextStyle(color: Colors.white, fontFamily: 'monospace'),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Blogs()));
              },
            ),
            const Divider(),
            const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white, fontFamily: 'monospace'),
              ),
              onTap: null,
            ),
            const Divider(),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GetStarted()));
              },
              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
