import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rank_education/services/services.dart';
import 'package:rank_education/ui/page/wrapper.dart';
import 'model/models.dart';
import 'ui/page/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rank Education",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}
