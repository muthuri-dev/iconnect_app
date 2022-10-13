import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Getting Started',
          style: TextStyle(fontFamily: 'monospace'),
        ),
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height * .3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(250),
            bottomRight: Radius.circular(80),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SizedBox(
          height: 450.0,
          width: MediaQuery.of(context).size.width * .75,
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: const [
                ListTile(
                  title: Text(
                    'About the App',
                    style: TextStyle(fontFamily: 'monospace'),
                  ),
                  trailing: Icon(Icons.app_shortcut),
                  enabled: true,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
                    child: Text(
                      'The Application is an open source platform aimed at connecting peer to peer who have the same interests in a particular area.The platform links metors,jobs and necessary resources to help the community grow.',
                      style: TextStyle(fontFamily: 'monospace'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Text(
                        'In addition to that, the platform also helps peers to connect and share ideas, through showcasing their projects on the platform. Making their profile makes them stand out when an opportunity comes.',
                        style: TextStyle(fontFamily: 'monospace')),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Text(
                        'The platform is open to contribution from the community under the linces of  MIT.',
                        style: TextStyle(fontFamily: 'monospace')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
