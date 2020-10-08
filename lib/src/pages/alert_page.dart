import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertPage'),
      ),
      body: Center(
          child: RaisedButton(
        child: Text('mostrar alerta'),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () => _mostrarAlert(context),
        shape: StadiumBorder(),
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.account_circle),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              title: Text('titulo'),
              content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('este es el contenido de la caja'),
                    FlutterLogo(size: 100.0)
                  ]),
              actions: <Widget>[
                FlatButton(
                  child: Text('cancelar'),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                FlatButton(
                  child: Text('ok'),
                  onPressed: () => Navigator.of(context).pop(),
                )
              ]);
        });
  }
}
