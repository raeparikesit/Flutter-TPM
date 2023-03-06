import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Praktikum TPM IF-C',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Image.asset(
              'assets/images/logo.png',
              width: 300,
              height: 150,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: '  Email',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: '  Password',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: ElevatedButton(onPressed: () {}, child: Text("Log in")),
          ),
          Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "Forgot Password?",
                textAlign: TextAlign.center,
              )),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
