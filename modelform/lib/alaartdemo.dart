import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlartDialogg extends StatefulWidget {
  const AlartDialogg({Key? key}) : super(key: key);

  @override
  State<AlartDialogg> createState() => _AlartDialoggState();
}

class _AlartDialoggState extends State<AlartDialogg> {
  Future _showDialog() async {
    return showDialog(
        context: context,
        builder: (contex) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            title: Text("Alart"),
            content: Text("Do You Yant delete"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(contex);
                },
                child: Text("Yes"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(contex);
                },
                child: Text("No"),
              ),
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
            child: Text("Press Here")),
      ),
    );
  }
}
