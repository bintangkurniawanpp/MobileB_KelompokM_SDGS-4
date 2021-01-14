part of 'shared.dart';

const double defaultMargin = 24;

//Color mainColor = Color(0xFF503E9D);
Color mainColor = Color(0xFF009688);
Color accentColor1 = Color(0xFF2C1F63);
Color accentColor2 = Color(0xFFFBD460);
Color accentColor3 = Color(0xFFADADAD);
Color accentColor4 = Color(0xFFFFAB00);

TextStyle blackTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w600);
TextStyle whiteTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
TextStyle purpleTextFont = GoogleFonts.raleway()
    .copyWith(color: mainColor, fontWeight: FontWeight.w900);
TextStyle greyTextFont = GoogleFonts.raleway()
    .copyWith(color: accentColor3, fontWeight: FontWeight.w500);
TextStyle yellowTextFont = GoogleFonts.raleway()
    .copyWith(color: accentColor4, fontWeight: FontWeight.w900);

TextStyle whiteNumberFont = GoogleFonts.openSans()
    .copyWith(color: Colors.white);
TextStyle yellowNumberFont = GoogleFonts.openSans()
    .copyWith(color: accentColor2);
