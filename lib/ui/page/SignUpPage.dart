part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _formKey = GlobalKey<FormState>();
  String name, email, password;
  AuthService authService = new AuthService();

  bool _isLoading = false;

  signUp() async{
    if (_formKey.currentState.validate()) {
      setState((){
        _isLoading = true;
      });
      await authService.signUpEmailAndPassword(email, password).then((val){
        if(val!=null){
          setState(() {
            _isLoading = false;
          });
          Routes.changePageNoBack(context, MainPage());
        }
      });
    }
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _isLoading ? Container(
        child: Center(child: CircularProgressIndicator(),)
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
                  child: Text("Buat Akun Baru",
                      style: blackTextFont.copyWith(fontSize: 30)),
                ),
                // SizedBox(height: 120, child: Image.asset("assets/images/user.jpg")),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Full Name",
                      hintText: "Full Name"),
                ),
                SizedBox(
                  height: 16,
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
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 40, bottom: 30),
                      child: FloatingActionButton(
                        elevation: 0,
                        child: Icon(Icons.arrow_forward, color: Colors.white),
                        backgroundColor: mainColor,
                        onPressed: () {
                          // Routes.changePageNoBack(context, MainPage());
                          signUp();
                        },
                      )),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
