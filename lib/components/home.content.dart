import 'package:flutter/material.dart';
import 'package:iconnect_app/views/pages/blogs.dart';
import 'package:iconnect_app/views/pages/errors.dart';
import 'package:iconnect_app/views/pages/groups.dart';
import 'package:iconnect_app/views/pages/ideas.dart';
import 'package:iconnect_app/views/pages/maps.dart';
import 'package:iconnect_app/views/pages/mentors.dart';
import 'package:iconnect_app/views/pages/news.dart';
import 'package:iconnect_app/views/pages/peers.dart';
import 'package:iconnect_app/views/pages/projects.dart';
import 'package:iconnect_app/views/pages/teams.dart';

class Homeontent extends StatefulWidget {
  const Homeontent({super.key});

  @override
  State<Homeontent> createState() => _HomeontentState();
}

class _HomeontentState extends State<Homeontent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Groups()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 200.0,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text(
                                'Groups',
                                style: TextStyle(
                                    fontFamily: 'monospace', fontSize: 20),
                              ),
                              trailing: Icon(Icons.group),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Find and join Groups in field of interest',
                                style: TextStyle(fontFamily: 'monospace'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Blogs()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 200.0,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text(
                                'Blogs',
                                style: TextStyle(
                                    fontFamily: 'monospace', fontSize: 20),
                              ),
                              trailing: Icon(Icons.group),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Publish and view other peers articles and blogs on this platform',
                                style: TextStyle(fontFamily: 'monospace'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Errors()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 200.0,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text(
                                'Errors',
                                style: TextStyle(
                                    fontFamily: 'monospace', fontSize: 20),
                              ),
                              trailing: Icon(Icons.group),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Post challenges encountering in the tech and get help from peers',
                                style: TextStyle(fontFamily: 'monospace'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Peers()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 200.0,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text(
                                'Peers',
                                style: TextStyle(
                                    fontFamily: 'monospace', fontSize: 20),
                              ),
                              trailing: Icon(Icons.group),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Find and Connect with other peers with the same interest',
                                style: TextStyle(fontFamily: 'monospace'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mentors()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 200.0,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text(
                                'Mentors',
                                style: TextStyle(
                                    fontFamily: 'monospace', fontSize: 20),
                              ),
                              trailing: Icon(Icons.group),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Register as a mentor or Find your Mentor to guide you on the tech journey',
                                style: TextStyle(fontFamily: 'monospace'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const News()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 200.0,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text(
                                'News',
                                style: TextStyle(
                                    fontFamily: 'monospace', fontSize: 20),
                              ),
                              trailing: Icon(Icons.group),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Catch up with the latest tech news, tech events and peer meetups.',
                                style: TextStyle(fontFamily: 'monospace'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Projects()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 200.0,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text(
                                'Projects',
                                style: TextStyle(
                                    fontFamily: 'monospace', fontSize: 20),
                              ),
                              trailing: Icon(Icons.group),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Showcase and view other peers projects including live demo',
                                style: TextStyle(fontFamily: 'monospace'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Anime()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 200.0,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text(
                                'Ideas',
                                style: TextStyle(
                                    fontFamily: 'monospace', fontSize: 20),
                              ),
                              trailing: Icon(Icons.group),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Check peers ideas and build theme to solve problems',
                                style: TextStyle(fontFamily: 'monospace'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RoadMaps()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 200.0,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text(
                                'Road-maps',
                                style: TextStyle(
                                    fontFamily: 'monospace', fontSize: 20),
                              ),
                              trailing: Icon(Icons.group),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'View any tech stack road map as a guide to get started',
                                style: TextStyle(fontFamily: 'monospace'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Designs()));
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .45,
                      height: 200.0,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              title: Text(
                                'Teams',
                                style: TextStyle(
                                    fontFamily: 'monospace', fontSize: 20),
                              ),
                              trailing: Icon(Icons.group),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Build teams peers from any geographical area and build real problem solutions',
                                style: TextStyle(fontFamily: 'monospace'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
