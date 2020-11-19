part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
            TextField(
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
            TextField(
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
                      Routes.changePageNoBack(context, MainPage());
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
                    Routes.changePageNoBack(context, MainPage());
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
    );
  }
}
