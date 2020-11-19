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

        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child:
              ListTile(
                // leading: Icon(Icons.book),
                title: Text('Daftar Quis yang sudah diikuti : '),
              ),
            ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Quis 2 Bahasa Indonesia'),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Latiahan 3 Matematika'),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Quis 2 Biologi'),
              ),
          ],
        ),
    );
  }
}
