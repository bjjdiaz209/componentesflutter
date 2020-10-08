import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AvatarPage'), actions: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_1000,h_600/https://wipy.tv/wp-content/uploads/2020/09/black-widow-llegaria-en-2021.jpg'),
            radius: 30.0,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            child: Text('SL'),
          ),
        )
      ]),
      body: Center(
        child: FadeInImage(
            image: NetworkImage(
                'https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_1000,h_600/https://wipy.tv/wp-content/uploads/2020/09/black-widow-llegaria-en-2021.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200)),
      ),
    );
  }
}
