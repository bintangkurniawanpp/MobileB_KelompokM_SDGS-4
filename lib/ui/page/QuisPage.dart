part of 'pages.dart';

class QuisPage extends StatefulWidget {
  final String quizId;
  QuisPage(this.quizId);

  @override
  _QuisPageState createState() => _QuisPageState();
}

int _correct = 0;
int _incorrect = 0;
int _notAttempted = 0;
int total = 0;

class _QuisPageState extends State<QuisPage> {

  DatabaseService databaseService = new DatabaseService();
  QuerySnapshot questionsSnapshot;
  bool isLoading = true;

  QuestionModel getQuestionModelFromDataSnapshot(DocumentSnapshot questionSnapshot){
    QuestionModel questionModel = new QuestionModel();
    questionModel.question = questionSnapshot.data["question"];

    List<String> options = [
      questionSnapshot.data["option1"],
      questionSnapshot.data["option2"],
      questionSnapshot.data["option3"],
      questionSnapshot.data["option4"]
    ];
    options.shuffle();

    questionModel.option1 = options[0];
    questionModel.option2 = options[1];
    questionModel.option3 = options[2];
    questionModel.option4 = options[3];
    questionModel.correctOption = questionSnapshot.data["option1"];
    questionModel.answered = false;

    return questionModel;

  }

  @override
  void initState() {
    //print("${widget.quizId}");
    databaseService.getQuestionData(widget.quizId).then((value){
      questionsSnapshot = value;
      _notAttempted = 0;
      _correct = 0;
      _incorrect = 0;
      total = questionsSnapshot.documents.length;
      print("total = $total");

      setState(() {

      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: AppLogo(),
        centerTitle: true,
        //automaticallyImplyLeading: false,
        brightness: Brightness.light,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black54,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(children: [
          questionsSnapshot.documents == null ? 
          Container(
            
          ) : 
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: questionsSnapshot.documents.length,
            itemBuilder: (context, index){
              return QuestionBlock(
                questionModel: getQuestionModelFromDataSnapshot(questionsSnapshot.documents[index]),
                index: index,
              );
            })
        ],)
      ),
    );
  }
}

class QuestionBlock extends StatefulWidget {

  final QuestionModel questionModel;
  final int index;
  QuestionBlock({
    this.questionModel,
    this.index
  });


  @override
  _QuestionBlockState createState() => _QuestionBlockState();
}

class _QuestionBlockState extends State<QuestionBlock> {

  String optionSelected = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(widget.questionModel.question),
        SizedBox(height: 4,),
        Option(
          correctAnswer:widget.questionModel.option1,
          description: widget.questionModel.option1,
          option: "A",
          optionSelected: optionSelected,
        ),SizedBox(height: 4,),
        Option(
          correctAnswer:widget.questionModel.option1,
          description: widget.questionModel.option2,
          option: "B",
          optionSelected: optionSelected,
        ),SizedBox(height: 4,),
        Option(
          correctAnswer:widget.questionModel.option1,
          description: widget.questionModel.option3,
          option: "C",
          optionSelected: optionSelected,
        ),SizedBox(height: 4,),
        Option(
          correctAnswer:widget.questionModel.option1,
          description: widget.questionModel.option4,
          option: "D",
          optionSelected: optionSelected,
        )
      ],),
    );
  }
}
