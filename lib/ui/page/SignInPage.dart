part of 'pages.dart';

class SignInPage extends StatefulWidget {

  final Function toogleView;

  SignInPage({this.toogleView});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  String email, password;
  AuthService authService = new AuthService();

  bool isLoading = false;

  signIn() async{
    if (_formKey.currentState.validate()) {
      setState((){
        isLoading = true;
      });
      await authService.signInEmailAndPass(email, password).then((val){
        if(val!=null){
          setState(() {
            isLoading = false;
          });

          //QuerySnapshot userInfoSnapshot = await _databaseMethods.getUserInfo(email);

          Routes.changePageNoBack(context, MainPage());
        }
      });
    }
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: isLoading ? Container(
        child: Center(
          child: CircularProgressIndicator(),
        )
      ) : Form(
        key: _formKey,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                    height: 120, child: Image.asset("assets/images/rank_logo.png")
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 40),
                  child: Text("Selamat datang!",
                      style: blackTextFont.copyWith(fontSize: 30)),
                ),
                TextFormField(
                  validator: (val){return val.isEmpty ? "Masukkan email" : null;} ,
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  labelText: "Email Address",
                  hintText: "Email Address"),
                  onChanged: (val){
                    email = val;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  validator: (val){return val.isEmpty ? "Masukkan password" : null;},
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  labelText: "Password",
                  hintText: "Password"),
                  onChanged: (value){
                    password = value;
                  },
                ),
                Center(
                  child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 40, bottom: 30),
                      child:  FloatingActionButton(
                        elevation: 0,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white
                        ),
                        backgroundColor: mainColor,
                        onPressed: () {
                          // Routes.changePageNoBack(context, MainPage());
                          signIn();
                        },
                      )
                    ),
                  ),
                Row(
                  children: <Widget>[
                  Text(
                    "Belum Punya Akun? ",
                    style:
                        greyTextFont.copyWith(fontWeight: FontWeight.w400),
                  ),
                    GestureDetector(
                      onTap: () {
                        // Routes.changePageNoBack(context, SignUpPage());
                        Routes.changePage(context, SignUpPage());
                      },
                      child: Text(
                        "Daftar",
                        style: purpleTextFont,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}
