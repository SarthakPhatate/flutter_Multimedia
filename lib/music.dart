import 'package:flutter/material.dart';
import 'package:ocarina/ocarina.dart';

class MyAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player1 = OcarinaPlayer(
    asset: 'audio/audio1.mp3',
    loop: true,
  );
  final player2 = OcarinaPlayer(
    asset: 'audio/audio2.mp3',
    loop: true,
  );
  final player3 = OcarinaPlayer(
    asset: 'audio/audio3.mp3',
    loop: true,
  );
  final player4 = OcarinaPlayer(
    asset: 'audio/audio4.mp3',
    loop: true,
  );
  final player5 = OcarinaPlayer(
    asset: 'audio/audio5.mp3',
    loop: true,
  );
  final player6 = OcarinaPlayer(
    asset: 'audio/audio6.mp3',
    loop: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player',
            style: TextStyle(
                fontStyle: FontStyle.italic, color: Colors.redAccent)),
        backgroundColor: Colors.black,
        leading: Icon(Icons.music_video),
      ),
      body: Container(
          alignment: Alignment.topCenter,
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://raw.githubusercontent.com/SarthakPhatate/flutter_Multimedia/master/98b03349a42b3188e925c311a8f1392b.jpg',
              ),
            ),
          ),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.network(
                    'https://cdn.dribbble.com/users/68657/screenshots/880602/nixon-audio-waveform.gif',
                    height: 200,
                    width: 250,
                  ),
                  Text('Audio 1',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                        fontSize: 20,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(Icons.play_arrow, color: Colors.green),
                          onPressed: () async {
                            await player1.load();
                            await player1.play();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.stop,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            player1.stop();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.pause,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            player1.pause();
                          }),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Audio 2',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                        fontSize: 20,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(Icons.play_arrow, color: Colors.green),
                          onPressed: () async {
                            await player2.load();
                            await player2.play();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.stop,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            player2.stop();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.pause,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            player2.pause();
                          }),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Audio 3',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                        fontSize: 20,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(Icons.play_arrow, color: Colors.green),
                          onPressed: () async {
                            await player3.load();
                            await player3.play();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.stop,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            player3.stop();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.pause,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            player3.pause();
                          }),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Audio 4',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                        fontSize: 20,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(Icons.play_arrow, color: Colors.green),
                          onPressed: () async {
                            await player4.load();
                            await player4.play();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.stop,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            player4.stop();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.pause,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            player4.pause();
                          }),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Audio 5',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                        fontSize: 20,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(Icons.play_arrow, color: Colors.green),
                          onPressed: () async {
                            await player5.load();
                            await player5.play();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.stop,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            player5.stop();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.pause,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            player5.pause();
                          }),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Audio 6',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                        fontSize: 20,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(Icons.play_arrow, color: Colors.green),
                          onPressed: () async {
                            await player6.load();
                            await player6.play();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.stop,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            player6.stop();
                          }),
                      RaisedButton(
                          color: Colors.grey.shade800,
                          child: Icon(
                            Icons.pause,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            player6.pause();
                          }),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
