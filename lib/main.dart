import 'package:flutter/material.dart';
import 'package:task4/pages/page1.dart';
import 'package:task4/pages/page2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=>PageOne(),
        '/page2':(context)=> PageTwo( title: 'User profile'),
      },
      title: 'flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
     // home: PageOne(),

    );
  }
}
