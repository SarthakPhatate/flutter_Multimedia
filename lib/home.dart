import 'package:flutter/material.dart';
//import 'music.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Container(
            height: 200,
            width: 500,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(4),
            child: Text('Audio',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                  fontSize: 30,
                )),
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://raw.githubusercontent.com/SarthakPhatate/flutter_Multimedia/master/gettyimages-1211986724-640x640.jpg',
                  ),
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade500,
                )),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/audio');
          },
        ),
        FlatButton(
          child: Container(
            height: 200,
            width: 500,
            margin: EdgeInsets.all(4),
            alignment: Alignment.bottomCenter,
            child: Text("Video",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                  fontSize: 30,
                )),
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://raw.githubusercontent.com/SarthakPhatate/flutter_Multimedia/master/1.jpg',
                  ),
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade500,
                )),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/video');
          },
        ),
      ],
    );

    var myhome = Scaffold(
        appBar: AppBar(
          title: Text('Media Player',
              style: TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.redAccent)),
          backgroundColor: Colors.black,
          leading: Icon(Icons.music_video),
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: mybody,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://raw.githubusercontent.com/SarthakPhatate/flutter_Multimedia/master/98b03349a42b3188e925c311a8f1392b.jpg',
                ),
              ),
            )));

    return myhome;
  }
}
