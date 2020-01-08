import 'package:flutter/material.dart';

import 'UI/input_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF363636),
        accentColor: Color(0xFFAAECA8),

      ),
      home:InputPage(),
    );
  }
}



