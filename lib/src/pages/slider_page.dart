import 'package:flutter/material.dart';

class Sliderpage extends StatefulWidget {
  @override
  _SliderpageState createState() => _SliderpageState();
}

class _SliderpageState extends State<Sliderpage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('slider'),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(children: <Widget>[
              _crearSlider(),
              _crearCheckBox(),
              _crearSwitch(),
              Expanded(
                child: _crearImagen(),
              ),
            ])));
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'tamano de la imagen',
      // divisions: 20,
      value: _valorSlider,
      max: 400.0,
      min: 10.0,

      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
        title: Text('bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/originals/b3/d3/5f/b3d35f6e77d804ea4bb11b9c51715ed1.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
