part of 'widgets.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
            fontSize: 22
        ),
        children: <TextSpan>[
          TextSpan(text: ' Rank ', style: purpleTextFont),
          TextSpan(text: 'Education', style: yellowTextFont),
        ],
      ),
    );
  }
}

class PageOneTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
            fontSize: 22
        ),
        children: <TextSpan>[
          TextSpan(text: ' Quis ', style: purpleTextFont),
          TextSpan(text: 'List', style: yellowTextFont),
        ],
      ),
    );
  }
}

class PageTwoTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
            fontSize: 22
        ),
        children: <TextSpan>[
          TextSpan(text: ' Create ', style: purpleTextFont),
          TextSpan(text: 'Quis', style: yellowTextFont),
        ],
      ),
    );
  }
}

class PageThreeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
            fontSize: 22
        ),
        children: <TextSpan>[
          TextSpan(text: ' Setting ', style: purpleTextFont),
        ],
      ),
    );
  }
}

class PageFourTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
            fontSize: 22
        ),
        children: <TextSpan>[
          TextSpan(text: ' Question ', style: purpleTextFont),
        ],
      ),
    );
  }
}