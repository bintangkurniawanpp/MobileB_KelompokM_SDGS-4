part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : new AppBar(
        backgroundColor: mainColor,
        title: Text('Beranda'),
        ),
        body: Center(
          child: Text('Ini beranda'),
          ),
    );
  }
}