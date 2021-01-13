part of 'pages.dart';

class QuisList extends StatefulWidget {
  @override
  _QuisListState createState() => _QuisListState();
}

class _QuisListState extends State<QuisList> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: PageOneTitle(),
        centerTitle: true,
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        //brightness: Brightness.li,
      ),
      body: Column()
    );
  }
}
