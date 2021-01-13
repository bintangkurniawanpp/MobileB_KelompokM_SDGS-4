part of 'pages.dart';

class SignInPage extends StatefulWidget {
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
      body: Form(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                    height: 120, child: Image.asset("assets/images/rank_logo.png")),
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 40),
                  child: Text("Selamat datang!",
                      style: blackTextFont.copyWith(fontSize: 30)),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  labelText: "Email Address",
                  hintText: "Email Address"),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  labelText: "Password",
                  hintText: "Password"),
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
