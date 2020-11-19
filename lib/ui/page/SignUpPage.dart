part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();

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
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 40),
              child: Text("Buat Akun Baru",
                  style: blackTextFont.copyWith(fontSize: 30)),
            ),
            SizedBox(height: 120, child: Image.asset("assets/images/user.jpg")),
            SizedBox(
              height: 16,
            ),
            TextField(
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
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: retypePasswordController,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Confirm Password",
                  hintText: "Confirm Password"),
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
                      Routes.changePageNoBack(context, MainPage());
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
