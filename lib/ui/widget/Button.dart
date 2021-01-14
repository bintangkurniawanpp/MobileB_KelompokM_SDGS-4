part of 'widgets.dart';

Widget addButton({BuildContext context, String label, buttonWidth}){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
      color: accentColor4,
      borderRadius: BorderRadius.circular(30)
    ),
    alignment: Alignment.center,
    width: buttonWidth != null ? buttonWidth : MediaQuery.of(context).size.width - 48,
    child: Text(label, style: whiteTextFont ),
  );
}

