part of 'pages.dart';

class ResultPage extends StatefulWidget {

  final int correct, incorrect, total;
  ResultPage({
    @required this.correct, @required this.incorrect, @required this.total
  });

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${widget.correct}/${widget.total}", style: TextStyle(
              fontSize: 40
            ),),
            SizedBox(
              height: 8,
            ),
            Text("Your correct answer is ${widget.correct}"
            " And your incorrect answer is ${widget.incorrect}", style: TextStyle(
              fontSize: 25
            ), textAlign: TextAlign.center,),
            SizedBox(
              height: 14
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: addButton(context: context, label: "Back", buttonWidth: MediaQuery.of(context).size.width/2),
            )
          ],
        ),)
      ),
    );
  }
}