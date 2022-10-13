import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iconnect_app/components/bottomNav.dart';
import 'dart:convert';

import 'package:url_launcher/link.dart';

String? stringResponse;
Map? mapResponse;
Map? dataResponse;
List? listResponse;

class Blogs extends StatefulWidget {
  const Blogs({super.key});

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  Future callApi() async {
    http.Response response;
    response = await http
        .get(Uri.parse("https://immense-basin-80931.herokuapp.com/blogs"));
    if (response.statusCode == 200) {
      debugPrint(response.body);
      setState(() {
        stringResponse = response.body;
        mapResponse = json.decode(response.body);
        listResponse = mapResponse!['data'];
      });
    }
  }

  @override
  void initState() {
    callApi();
    super.initState();
  }

  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Blogs',
          style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 20,
              fontWeight: FontWeight.w900),
        ),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Link(
            target: LinkTarget.self,
            uri: Uri.parse('https://flutter.dev'),
            builder: (context, followLink) => Padding(
              padding:
                  const EdgeInsets.only(top: 90.0, bottom: 90.0, left: 15.0),
              child: OutlinedButton(
                onPressed: followLink,
                child: const Text(
                  'Open in web',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 15),
                ),
              ),
            ),
          ),
        ],
        toolbarHeight: MediaQuery.of(context).size.height * .25,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(200),
          ),
        ),
      ),
      body: ListView.builder(
          controller: _controller,
          itemCount: listResponse?.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: listResponse == null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator(
                            color: Colors.black,
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Data is Loading ...',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'monospace',
                                fontSize: 20),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 150.0,
                        child: ListTile(
                          title: Text(listResponse![index]["title"].toString()),
                          subtitle: Text(
                              listResponse![index]["description"].toString()),
                        ),
                      ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          const double start = 0;
          _controller.animateTo(start,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn);
        },
        child: const Icon(Icons.arrow_upward_outlined),
      ),
      bottomNavigationBar: const ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNav(),
      ),
    );
  }
}
