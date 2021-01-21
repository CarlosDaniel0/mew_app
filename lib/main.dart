import 'package:flutter/material.dart';
import 'views/home.dart';

void main() {
  runApp(MaterialApp(
      title: "Meu App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Home()));
}
