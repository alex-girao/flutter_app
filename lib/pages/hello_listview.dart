import 'package:flutter/material.dart';

class Dog{
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: _body(),
    );
  }

  _body() {
    List<Dog> dogs = [
      Dog("Jack Russel", "assets/images/dog1.png"),
      Dog("Labrador", "assets/images/dog2.png"),
      Dog("Pug", "assets/images/dog3.png"),
      Dog("Rottweiler", "assets/images/dog4.png"),
      Dog("Pastor", "assets/images/dog5.png"),
    ];
    return ListView.builder(
      itemCount: dogs.length,
      itemExtent: 300,
      itemBuilder: (BuildContext context, int index) {
        Dog dog = dogs[index];
        //return _img(dog.foto);
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            //primeiro a imagem
            _img(dog.foto),
            //depois o nome
            Text(
              dog.nome,
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
          ],
        );
        /* pode substituir o stack
        return Stack(
          children: <Widget>[
            SizedBox.expand(
              child: _img(dog.foto),
            )
          ],
        );
        */
      },
    );
  }

  _img(String img) {
    return Container(
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
    );
  }
}
