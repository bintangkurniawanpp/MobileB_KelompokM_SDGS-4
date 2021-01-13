part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  final List<Widget> _children = [
    QuisList(),
    AddQuis(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          color: mainColor,
          buttonBackgroundColor: accentColor2,
          backgroundColor: Colors.white,
          items: <Widget>[
            Icon(Icons.list, size: 30),
            Icon(Icons.add, size: 30),
            Icon(Icons.settings, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: _children[_page],
      );
  }

}