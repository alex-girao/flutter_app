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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _img(),
          _buttons()
        ],
      ),
    );
  }

  _buttons() {
    return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("ListView"),
                _button("Page 2"),
                _button("page 3")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("Saback"),
                _button("Dialog"),
                _button("Toast")
              ],
            )
          ],
        );
  }

  _button(String text) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () => _onClickOk()
    );
  }

  void _onClickOk() {
    print("Clicou");
  }


  _img() {
    return Image.asset(
      "assets/images/dog1.png",
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