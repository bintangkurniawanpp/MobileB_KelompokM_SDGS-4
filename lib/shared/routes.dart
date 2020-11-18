part of 'shared.dart';
class Routes {
  static changePage(BuildContext context, StatefulWidget classes){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return classes;
        }
      )
    );
  }

    static changePageNoBack(BuildContext context, StatefulWidget classes){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) {
          return classes;
        }
      )
    );
  }
}
