import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconnect_app/views/screen2.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        color: const Color.fromARGB(255, 63, 22, 133),
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            SvgPicture.asset(
              'assets/svgs/cover.svg',
              height: 350.0,
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              'Connecting Peers',
              style: TextStyle(
                  fontSize: 30.0, color: Colors.white, fontFamily: 'monospace'),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Connect with people of simillar interest across the globe and participate solving and building real life ideas',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 17.0,
                    fontFamily: 'monospace',
                    letterSpacing: sqrt1_2),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'monospace'),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(Icons.start_outlined)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
