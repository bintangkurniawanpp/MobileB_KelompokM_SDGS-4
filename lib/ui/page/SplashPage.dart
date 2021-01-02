part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 136,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/images/rank_logo.png"))),
              ),
              Container(
                margin: EdgeInsets.only(top: 70, bottom: 16),
                child: Text(
                  "Rank Education",
                  style: blackTextFont.copyWith(fontSize: 20),
                ),
              ),
              Text(
                "Aplikasi Mobile untuk meningkatkan kualitas, \nkecerdasan dan ketepatan siswa",
                style: greyTextFont.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 250,
                height: 46,
                margin: EdgeInsets.only(top: 70, bottom: 19),
                child: RaisedButton(
                    child: Text(
                      "Mulai",
                      style: whiteTextFont.copyWith(fontSize: 16),
                    ),
                    color: mainColor,
                    onPressed: () {
                      Routes.changePage(context, SignUpPage());
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sudah punya akun? ",
                    style: greyTextFont.copyWith(fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      Routes.changePage(context, SignInPage());
                    },
                    child: Text(
                      "Masuk",
                      style: purpleTextFont,
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}