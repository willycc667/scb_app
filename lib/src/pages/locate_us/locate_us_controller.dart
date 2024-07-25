import 'package:flutter/material.dart';

class LocateUsController {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  TextEditingController userDocumentController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  BuildContext? context;
  Function? refresh;

  Future? init(BuildContext context, Function refresh) async {
    this.context = context;
    this.refresh = refresh;
  }

  void login() async {
    Navigator.pushNamed(
      context!,
      "main",
    ).whenComplete(() => {});
  }
}
