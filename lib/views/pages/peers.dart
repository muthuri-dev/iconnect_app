import 'package:flutter/material.dart';
import 'package:iconnect_app/components/bottomNav.dart';
import 'package:url_launcher/link.dart';

class Peers extends StatefulWidget {
  const Peers({super.key});

  @override
  State<Peers> createState() => _PeersState();
}

class _PeersState extends State<Peers> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Connect with peers',
          style: TextStyle(fontFamily: 'monospace'),
        ),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Link(
            target: LinkTarget.self,
            uri: Uri.parse('https://flutter.dev'),
            builder: (context, followLink) => Padding(
              padding: const EdgeInsets.only(top: 90.0, bottom: 90, left: 15.0),
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
                bottomRight: Radius.circular(200))),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          const double start = 0;
          _controller.animateTo(start,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn);
        },
        child: const Icon(Icons.arrow_upward),
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
