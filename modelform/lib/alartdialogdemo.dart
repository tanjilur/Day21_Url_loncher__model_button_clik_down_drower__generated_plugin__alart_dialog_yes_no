import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlartDialogeDemo extends StatefulWidget {
  const AlartDialogeDemo({Key? key}) : super(key: key);

  @override
  State<AlartDialogeDemo> createState() => _AlartDialogeDemoState();
}

class _AlartDialogeDemoState extends State<AlartDialogeDemo> {
  Future _showDialog() async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alart..!"),
            content: Text("Do you want to delete"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  },
                  child: Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  },
                  child: Text("No")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showDialog();
            },
            child: Text("Conferm")),
      ),
    );
  }
}
