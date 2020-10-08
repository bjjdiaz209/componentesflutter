import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardPage'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
          SizedBox(height: 20.0),
          _cardTipo1(),
          SizedBox(height: 20.0),
          _cardTipo2(),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('titulo cards'),
          subtitle: Text(
              'bsjcsjncjksnjkcbjsbcbsjbcjsbcjkbjsbcjsbjcbjsbcjksbjcbsjbcjscbsjcbjsbcj'),
        )
      ]),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://chiledescentralizado.cl/wp-content/uploads/2016/03/landscape-04.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('no tengo nada'),
          )
        ],
      ),
    );

    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 10.0))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: card,
        ));
  }
}
