import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ModelButtonsDemo extends StatefulWidget {
  const ModelButtonsDemo({Key? key}) : super(key: key);

  @override
  State<ModelButtonsDemo> createState() => _ModelButtonsDemoState();
}

class _ModelButtonsDemoState extends State<ModelButtonsDemo> {
  Future _showModel() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showModel();
              //   showModalBottomSheet(
              //       context: context,
              //       builder: (context) {
              //         return Container(
              //           height: 200,
              //           width: 200,
              //           decoration: BoxDecoration(
              //             color: Colors.pink,
              //             borderRadius: BorderRadius.circular(25),
              //           ),
              //           child: Column(
              //             children: [
              //               ListTile(
              //                 leading: Icon(Icons.shopping_cart),
              //                 title: Text("add to curt"),
              //                 trailing: Icon(
              //                   Icons.edit,
              //                 ),
              //               ),
              //               ListTile(
              //                 leading: Icon(Icons.shopping_cart),
              //                 title: Text("Check out"),
              //                 trailing: Icon(
              //                   Icons.edit,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         );
              //       }
              //       );
            },
            child: Text("ElevatedBtn")),
      ),
    );
  }
}
