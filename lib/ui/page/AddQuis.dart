part of 'pages.dart';

class AddQuis extends StatefulWidget {
  @override
  _AddQuisState createState() => _AddQuisState();
}

class _AddQuisState extends State<AddQuis> {
  final _formKey = GlobalKey<FormState>();
  String quizImgUrl, quizTitle, quizDesc, quizId;
  DatabaseService databaseService = new DatabaseService();

  bool _isLoading = false;

  addQuizOnline() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isLoading = true;
      });
      quizId = randomAlphaNumeric(16);

      Map<String, String> quizMap = {
        "quizId": quizId,
        "quizImgUrl": quizImgUrl,
        "quizTitle": quizTitle,
        "quizDesc": quizDesc
      };
      await databaseService.addQuizData(quizMap, quizId).then((value) {
        setState(() {
          setState(() {
            _isLoading = false;
            Routes.changePageNoBack(context, AddQuestion(quizId: quizId,));
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: PageTwoTitle(),
        centerTitle: true,
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        //brightness: Brightness.li,
      ),
      body: _isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      validator: (val) =>
                          val.isEmpty ? "Enter Quiz Image Url" : null,
                      decoration: InputDecoration(
                          hintText: "Quiz Image Url (Optional)"),
                      onChanged: (val) {
                        quizImgUrl = val;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      validator: (val) =>
                          val.isEmpty ? "Enter Quiz Title" : null,
                      decoration: InputDecoration(hintText: "Quiz Title"),
                      onChanged: (val) {
                        quizTitle = val;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      validator: (val) =>
                          val.isEmpty ? "Enter Quiz Description" : null,
                      decoration: InputDecoration(hintText: "Quiz Description"),
                      onChanged: (val) {
                        quizDesc = val;
                      },
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        addQuizOnline();
                      },
                      child: addButton(
                        context: context, 
                        label: "Create quis"),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
