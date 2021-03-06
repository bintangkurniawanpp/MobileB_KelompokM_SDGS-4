part of 'widgets.dart';

class Option extends StatefulWidget {

  final String option, description, correctAnswer, optionSelected;
  Option({@required this.option, @required this.description, @required this.correctAnswer, @required this.optionSelected});

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        // Option Bulat
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.description == widget.optionSelected ? 
                    widget.optionSelected == widget.correctAnswer ? 
                    Colors.greenAccent[400] : Colors.red[400] : Colors.grey[400], 
              width: 1.5
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
          child: Text("${widget.option}", style: TextStyle(
            color:  widget.optionSelected == widget.description ?
                    widget.correctAnswer == widget.optionSelected ? 
                    Colors.green : Colors.red : Colors.grey[400],
                    ),
          ),
        ),
        SizedBox(width: 8,),
        Text(widget.description, style: TextStyle(fontSize: 17, color: Colors.black54,),),
      ],)
    );
  }
}