import 'package:flutter/material.dart';
import 'package:lottery_checker/screens/scan_page.dart';

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
            Text(
              "ตรวจล็อตเตอรี่",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            const Text("ผลการตรวจ"),
            const SizedBox(
              height: 30,
            ),
            Text(
              scanResult,
              style: const TextStyle(fontSize: 25),
            ),bottonScan("สแกน", const ScanPage())
          ],
        ),
      ),
    );
  }

  Widget bottonScan(String text, Widget page) {
    // ignore: deprecated_member_use
    return FlatButton(
      padding: const EdgeInsets.all(10.0),
      child: Text(text, style: const TextStyle(fontSize: 24),),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0), side: const BorderSide(color: Colors.purple, width: 3.0)),
    );
  }
}
