import 'package:flutter/material.dart';
import 'package:iconnect_app/views/pages/errors.dart';

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
                    onTap: null,
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
                    onTap: null,
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
                    onTap: null,
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
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: null,
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
                    onTap: null,
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
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: null,
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
                    onTap: null,
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
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: null,
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
                    onTap: null,
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
              ],
            ),
          ],
        )
      ],
    );
  }
}
