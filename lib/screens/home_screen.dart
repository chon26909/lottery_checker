import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String scanResult = "";

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("ตรวจล็อตเตอรี่", style: TextStyle(fontSize: 24),),
          ],
        ),
      ),
      body: SingleChildScrollView(child: Column(children: const [
        Text("43234342"),
        Text("312231"),
      ],),),
    );
  }

  startScan() async {
    String? cameraScanResult = await scanner.scan();
    setState(() {
      scanResult = cameraScanResult!;
    });
  }
}
