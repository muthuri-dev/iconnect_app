import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconnect_app/views/home.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final nameController = TextEditingController();

  String name = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        color: Colors.deepPurple,
        child: Column(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            SvgPicture.asset(
              'assets/svgs/second.svg',
              height: 300.0,
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.white, fontSize: 25.0, fontFamily: 'monospace'),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: nameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: 'Enter Username',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Center(
              child: Text(
                error,
                style:
                    const TextStyle(color: Colors.red, fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = nameController.text;
                  if (name == '') {
                    setState(() {
                      error = 'Please Enter Username';
                    });
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home(value: name)),
                    );
                  }
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'CONTINUE',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(Icons.send)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
