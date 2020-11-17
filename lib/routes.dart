import 'package:flutter/material.dart';

class Routes {
  static changePages(BuildContext context, StatelessWidget pages) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return pages;
    }));
  }
}
