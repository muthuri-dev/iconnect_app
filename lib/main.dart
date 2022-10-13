import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconnect_app/views/screen1.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const FirstScreen(),
    ),
  );
}
