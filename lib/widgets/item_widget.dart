import "package:flutter/material.dart";
import 'package:flutter_for_trial/models/catalog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          onTap: () {
            Fluttertoast.showToast(
              msg: (item.desc), // message
              toastLength: Toast.LENGTH_SHORT, // length
              // gravity: ToastGravity.CENTER, // location
            );
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price.toString()}",
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.deepPurple,
              ))),
    );
  }
}
