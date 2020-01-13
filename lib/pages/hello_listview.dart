import 'package:flutter/material.dart';

class Dog {
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

/**
 *  Os Widgets que herdam de StatefulWidget podem alterar o prórpio estado
 *  de acordo com eventos prefinidos
 */
class HelloListView extends StatefulWidget {
  @override
  _HelloListViewState createState() => _HelloListViewState();
}

class _HelloListViewState extends State<HelloListView> {
  // variaveis que começam com underline são privadas
  bool _gridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              setState(() {
                _gridView = false;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.grid_on),
            onPressed: () {
              setState(() {
                _gridView = true;
              });
            },
          ),
        ],
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
    if (_gridView) {
      return GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: dogs.length,
        itemBuilder: (BuildContext context, int index) {
          return _itemView(dogs, index);
        },
      );
    } else {
      return ListView.builder(
        itemExtent: 350,
        itemCount: dogs.length,
        itemBuilder: (BuildContext context, int index) {
          return _itemView(dogs, index);
        },
      );
    }
  }

  Stack _itemView(List<Dog> dogs, int index) {
    Dog dog = dogs[index];
    //return _img(dog.foto);
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        //primeiro a imagem
        _img(dog.foto),
        //depois o nome
        Align(
          alignment: Alignment.topLeft,
          //alignment: Alignment(1,1),
          child: Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(16)),
            child: Text(
              dog.nome,
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
          ),
        ),
      ],
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
