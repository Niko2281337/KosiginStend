import 'package:flutter/material.dart';
import 'package:shablon/pages/register/sign.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homelike(),
  ));
}

// ignore: camel_case_types
class homelike extends StatefulWidget {
   homelike({super.key});


  @override
  State<homelike> createState() => _homelikeState();
}

// ignore: camel_case_types
class _homelikeState extends State<homelike> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white, 
    body: person());
  }
}
