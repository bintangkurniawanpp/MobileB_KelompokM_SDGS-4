part of 'pages.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  AuthService authService = new AuthService();
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: PageThreeTitle(),
        centerTitle: true,
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        //brightness: Brightness.li,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          imageProfile(),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Routes.changePageNoBack(context, SignInPage());
            },child: addButton(
              context: context, label: "Sign Out", buttonWidth: MediaQuery.of(context).size.width/2
            ),
          )
        ],
      )
    );
  }

  Widget imageProfile(){
    return Center(
      child: Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage: _imageFile == null ? AssetImage(
            "assets/images/avatarImg.png") : FileImage(File(_imageFile.path)),
        ), 
        Positioned(
            bottom: 20.0, 
            right: 20.0,
            child: InkWell(
              onTap: (){
                showModalBottomSheet(
                  context: context, 
                  builder: ((builder) => bottomSheet()),);
              },
                child: Icon(
                Icons.camera_alt,
                color: mainColor,
                size: 28.0,
              ),
            ),
          ),
      ]),
    );
}

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Avatar Image",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }


}



