import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:iconnect_app/components/bottomNav.dart';
import 'package:url_launcher/link.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String? stringResponse;
Map? mapResponse;
List? listResponse;

class Errors extends StatefulWidget {
  const Errors({super.key});

  @override
  State<Errors> createState() => _ErrorsState();
}

class _ErrorsState extends State<Errors> {
  final ScrollController _controller = ScrollController();

  Future callApi() async {
    http.Response response;
    response = await http
        .get(Uri.parse('https://immense-basin-80931.herokuapp.com/errors'));
    if (response.statusCode == 200) {
      debugPrint(response.body);
      setState(() {
        stringResponse = response.body;
        mapResponse = jsonDecode(response.body);
        listResponse = mapResponse!['data'];
      });
    }
  }

  @override
  void initState() {
    callApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Errors',
          style: TextStyle(fontFamily: 'monospace'),
        ),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Link(
            target: LinkTarget.self,
            uri: Uri.parse('https://flutter.dev'),
            builder: (context, followLink) => OutlinedButton(
              onPressed: followLink,
              child: const Text(
                'Open in web',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'monospace', fontSize: 15),
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
          itemCount: listResponse?.length,
          itemBuilder: (context, int index) {
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
                            'Data Loading ...',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'monospace',
                                fontSize: 20),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 200.0,
                        child: ListTile(
                          title: Text(
                              listResponse![index]["description"].toString()),
                          subtitle:
                              Text(listResponse![index]["git"].toString()),
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
