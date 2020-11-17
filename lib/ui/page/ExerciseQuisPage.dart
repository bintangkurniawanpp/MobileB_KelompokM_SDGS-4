part of 'pages.dart';

class ExerciseQuis extends StatefulWidget {
  @override
  _ExerciseQuisState createState() => _ExerciseQuisState();
}

class _ExerciseQuisState extends State<ExerciseQuis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text('Quis'),
      ),
      body: Center(
        child: Text('Ini Quis'),
      ),
    );
  }
}