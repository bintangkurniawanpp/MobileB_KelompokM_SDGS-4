part of 'pages.dart';

class QuisList extends StatefulWidget {
  @override
  _QuisListState createState() => _QuisListState();
}

class _QuisListState extends State<QuisList> {
  Stream quizStream;
  DatabaseService databaseService = new DatabaseService();

  Widget quizList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        //physics: AlwaysScrollableScrollPhysics(),
        children: [
          StreamBuilder(
            stream: quizStream,
            builder: (context, snapshot) {
              return snapshot.data == null
                  ? Container(
                    child: CircularProgressIndicator(),
                  )
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      //physics: const BouncingScrollPhysics(),
                      physics: const ClampingScrollPhysics(),
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) {
                        return QuizBlock(
                          imageUrl:
                              snapshot.data.documents[index].data['quizImgUrl'],
                          title:
                              snapshot.data.documents[index].data['quizTitle'],
                          description:
                              snapshot.data.documents[index].data['quizDesc'],
                          quizId: snapshot.data.documents[index].data["quizId"],
                        );
                      });
            },
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    databaseService.getQuizData().then((val) {
      //quizStream = value;
      setState(() {
        quizStream = val;
      });
    });
    super.initState();
  }

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
        ),
        body: quizList());
  }
}

class QuizBlock extends StatelessWidget {
  final String imageUrl, title, quizId, description;
  //final int noOfQuestions;

  QuizBlock(
      {@required this.title,
      @required this.imageUrl,
      @required this.description,
      @required this.quizId});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Routes.changePage(context, QuisPage(quizId));
      },
      child: Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 150,
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageUrl,
                    width: MediaQuery.of(context).size.width - 48,
                    fit: BoxFit.cover,
                  )),
              Container(
                color: Colors.black26,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
