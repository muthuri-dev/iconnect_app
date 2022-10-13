import 'package:flutter/material.dart';
import 'package:iconnect_app/components/bottomNav.dart';
import 'package:iconnect_app/components/drawer.dart';
import 'package:iconnect_app/components/home.content.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Welcome Peer',
          style: TextStyle(fontFamily: 'monospace'),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        toolbarHeight: MediaQuery.of(context).size.height * .25,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70.0),
            bottomRight: Radius.circular(200.0),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset('assets/images/icon.png'),
            ),
          ),
        ],
      ),
      drawer: const NavigationDrawer(),
      body: const Homeontent(),
    );
  }
}
