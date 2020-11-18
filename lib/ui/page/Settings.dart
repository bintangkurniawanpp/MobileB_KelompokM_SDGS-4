part of 'pages.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : new AppBar(
          backgroundColor: mainColor,
          title: Text('Pengaturan'),
        ),
        body: Center(
          child: Text('Ini pengaturan'),
          ),
    );
  }
}