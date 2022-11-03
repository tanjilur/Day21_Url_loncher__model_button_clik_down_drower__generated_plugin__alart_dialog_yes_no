import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modelform/welcome.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  TextEditingController nameControll = TextEditingController();
  TextEditingController emailControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(label: Text("Enter Your name")),
            ),
            TextFormField(
              controller: nameControll,
              decoration: InputDecoration(label: Text("Enter Your email")),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          Welcome(nameControll.text, emailControll.text)));
                },
                child: Text("Submite"))
          ],
        ),
      ),
    );
  }
}
