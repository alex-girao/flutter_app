import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      // margin: EdgeInsets.only(left: 10, top: 10),
      color: Colors.white,
      child: Center(
        child: _img()
      ),
    );
  }

  _img() {
    return Image.asset(
      "assets/images/dog3.png",
      fit: BoxFit.cover,
    );
  }

  _text() {
    return Text(
      "Hello word",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dotted,
      ),
    );
  }
}