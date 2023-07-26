import 'package:flutter/material.dart';

AppBar buildApp(context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    leadingWidth: MediaQuery.of(context).size.width,
    leading: const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: Text(
        "குழுமம்",
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          letterSpacing: -1,
        ),
      ),
    ),
    actionsIconTheme: const IconThemeData(
      size: 25,
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: Icon(
          Icons.search,
          color: Colors.grey,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: Icon(
          Icons.chat,
          color: Colors.redAccent,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: Icon(
          Icons.group,
          color: Colors.blueGrey,
        ),
      ),
      Icon(
        Icons.notifications,
        color: Colors.blue,
      ),
    ],
  );
}
