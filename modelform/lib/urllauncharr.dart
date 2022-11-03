import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherr extends StatefulWidget {
  const UrlLauncherr({Key? key}) : super(key: key);

  @override
  State<UrlLauncherr> createState() => _UrlLauncherrState();
}

class _UrlLauncherrState extends State<UrlLauncherr> {
  String _url = "https://www.prothomalo.com/politics/nko30jw3an";

  Future _urlLonncher() async {
    if (!await (launch(_url))) throw "Could not find";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _urlLonncher();
            },
            child: Text("data")),
      ),
    );
  }
}
