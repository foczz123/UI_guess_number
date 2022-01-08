import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess Number',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GUESS NUMBER')),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(width: 2.0, color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.lightGreenAccent.withOpacity(0.5),
                        offset: const Offset(3.0, 4.0),
                        spreadRadius: 2.0,
                        blurRadius: 5.0)
                  ]),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  //mainAxisAlignment: MainAxisAlignment.center
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/guess_logo.png",
                            width: 130.0),
                        Text(" GUESS\n NUMBER",
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Color(0x80FF0000),
                                fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 400,
                        child: TextField()),
                    SizedBox(height: 20),
                    TextButton(
                        child: Text(
                          'GUESS',
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.blueAccent),
                        onPressed: () {}),
                  ],
                ),
              ),
            )));
  }
}
