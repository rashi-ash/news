import 'package:flutter/material.dart';
import 'models/loading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) =>LoadingScreen() ,}
      // '/Profile': (context) => Screen(),
    );

  }
}

