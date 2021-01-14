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
      child: Column(
        children: [
          StreamBuilder(
            stream: quizStream,
            builder: (context, snapshot) {
              return snapshot.data == null
                  ? Container()
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) {
                        return QuizBlock(
                          imageUrl:
                              snapshot.data.documents[index].data['quizImgUrl'],
                          title:
                              snapshot.data.documents[index].data['quizTitle'],
                          description:
                              snapshot.data.documents[index].data['quizDesc'],
                          id: snapshot.data.documents[index].data["id"],
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
          //brightness: Brightness.li,
        ),
        body: quizList());
  }
}

class QuizBlock extends StatelessWidget {
  final String imageUrl, title, id, description;
  //final int noOfQuestions;

  QuizBlock(
      {@required this.title,
      @required this.imageUrl,
      @required this.description,
      @required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title),
                  Text(description),
                ],
              ),
            )
          ],
        ));
  }
}
