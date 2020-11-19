part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ExerciseQuis(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mainColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: (int index) {
          setState(() => _currentIndex = index);
        },
        currentIndex: _currentIndex, 
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda'),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Gabung Quis'),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Pengaturan'),
            ),
        ]),      
    );
  }
}