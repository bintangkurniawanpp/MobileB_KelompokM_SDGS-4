import 'package:flutter/material.dart';
import 'ui/page/pages.dart';
import 'package:rank_education/helper/helpers.dart';

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

// Bingung gan pas mau pake shared preference :v

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool isUserLoggedIn = false;
//   @override
//   void initState() {
//     getLoggedInState();
//     super.initState();
//   }

//   getLoggedInState() async {
//     await Constants.getUerLoggedInSharedPreference().then((value) {
//       setState(() {
//         isUserLoggedIn = value;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Rank Education",
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: (isUserLoggedIn ?? false) ? MainPage() : Authenticate(),
//     );
//   }
// }
