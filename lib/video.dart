import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:iqplayer/iqplayer.dart';

class MyVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Video Player'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player',
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
          children: [
            RaisedButton(
              color: Colors.grey.shade800,
              child: Text(
                'Video on Network',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => IQScreen(
                      title: title,
                      description: 'Network Video',
                      videoPlayerController: VideoPlayerController.network(
                        'https://d11b76aq44vj33.cloudfront.net/media/720/video/5def7824adbbc.mp4',
                      ),
                      iqTheme: IQTheme(
                        loadingProgress: SpinKitCircle(
                          color: Colors.red,
                        ),
                        playButtonColor: Colors.transparent,
                        videoPlayedColor: Colors.indigo,
                        playButton: (BuildContext context, bool isPlay,
                            AnimationController animationController) {
                          if (isPlay)
                            return Icon(
                              Icons.pause_circle_filled,
                              color: Colors.red,
                              size: 50,
                            );
                          return Icon(
                            Icons.play_circle_outline,
                            color: Colors.red,
                            size: 50,
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              color: Colors.grey.shade800,
              child: Text(
                'Video 1',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => IQScreen(
                      title: title,
                      description: 'Assets Video 1',
                      videoPlayerController: VideoPlayerController.asset(
                        'video/video1.mp4',
                      ),
                      iqTheme: IQTheme(
                        loadingProgress: SpinKitCircle(
                          color: Colors.red,
                        ),
                        playButtonColor: Colors.transparent,
                        videoPlayedColor: Colors.indigo,
                        playButton: (BuildContext context, bool isPlay,
                            AnimationController animationController) {
                          if (isPlay)
                            return Icon(
                              Icons.pause_circle_filled,
                              color: Colors.red,
                              size: 50,
                            );
                          return Icon(
                            Icons.play_circle_outline,
                            color: Colors.red,
                            size: 50,
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              color: Colors.grey.shade800,
              child: Text(
                'Video 2',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => IQScreen(
                      title: title,
                      description: 'Assets Video 2',
                      videoPlayerController: VideoPlayerController.asset(
                        'video/video2.mp4',
                      ),
                      iqTheme: IQTheme(
                        loadingProgress: SpinKitCircle(
                          color: Colors.red,
                        ),
                        playButtonColor: Colors.transparent,
                        videoPlayedColor: Colors.indigo,
                        playButton: (BuildContext context, bool isPlay,
                            AnimationController animationController) {
                          if (isPlay)
                            return Icon(
                              Icons.pause_circle_filled,
                              color: Colors.red,
                              size: 50,
                            );
                          return Icon(
                            Icons.play_circle_outline,
                            color: Colors.red,
                            size: 50,
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              color: Colors.grey.shade800,
              child: Text(
                'Video 3',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => IQScreen(
                      title: title,
                      description: 'Assets Video 3',
                      videoPlayerController: VideoPlayerController.asset(
                        'video/video3.mp4',
                      ),
                      iqTheme: IQTheme(
                        loadingProgress: SpinKitCircle(
                          color: Colors.red,
                        ),
                        playButtonColor: Colors.transparent,
                        videoPlayedColor: Colors.indigo,
                        playButton: (BuildContext context, bool isPlay,
                            AnimationController animationController) {
                          if (isPlay)
                            return Icon(
                              Icons.pause_circle_filled,
                              color: Colors.red,
                              size: 50,
                            );
                          return Icon(
                            Icons.play_circle_outline,
                            color: Colors.red,
                            size: 50,
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
