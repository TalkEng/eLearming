import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learninge/Models/posts_model.dart';
import 'package:learninge/utilities/size_config.dart';
typedef void OnError(Exception exception);

void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false,home:  MyApp()));
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: Player(),
            );
          },
        );
      },
    );
  }
}

class Player extends StatefulWidget {
  final Post post;
  Player({Key key, this.title,@required this.post}) : super(key: key);
  final String title;
  @override
  _PlayerState createState() => _PlayerState(post);
}

class _PlayerState extends State<Player> with SingleTickerProviderStateMixin{

  Post  post;
  _PlayerState(this. post);

  double _value = 00.0;
  void _setValue(double value) {
    setState(() {
      _value = value;
    });
  }
  AnimationController animationController;
  bool isPlaying = false;


  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    initPlayer();

  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
      _duration = d;
    });

    advancedPlayer.positionHandler = (p) => setState(() {
      _position = p;
    });
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }





  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                    onTap:(){
                      Navigator.pop(context);},
                    child: Icon(Icons.arrow_back_ios, color: Colors.black,)),
                Text("NOW PLAYING", style: TextStyle(
                  fontFamily: 'Nunito-Bold',
                  letterSpacing: 1.0,
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
                Icon(Icons.more_vert, color: Colors.black,)
              ],
            ),
          ),

          SizedBox(height: 60.0,),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset("assets/notimetodiebe.jpg", fit: BoxFit.cover,
            height: 300 ,
            width: 250 ),
          ),
          SizedBox(height: 20.0,),
          Text(/*post.title*/"Data Science", style: TextStyle(
            fontFamily: 'Nunito-Bold',
            letterSpacing: 1.0,
            fontSize: 24 ,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 15.0,),
          Text("Brief description", style: TextStyle(
              fontFamily: 'Nunito-Bold',
              letterSpacing: 1.0,
              fontSize: 16 ,
              color: Colors.black,
          ),),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),

            child: Slider(
              activeColor: Colors.orangeAccent,
              inactiveColor: Colors.grey,
                value: _position.inSeconds.toDouble(),
                min: 0.0,
                max: _duration.inSeconds.toDouble(),
                onChanged: (double value) {
                  setState(() {
                    seekToSecond(value.toInt());
                    value = value;
                  });
                }),



          ),

          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.fast_rewind, color: Colors.black,),
                CircleAvatar(
                  backgroundColor: Colors.black87,
                  radius: 40.0,
                  child: IconButton(
                    iconSize: 50,
                  color: Colors.white,
                  icon: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: animationController),
                    onPressed: (){
                      _handleOnPressed();
                      if(isPlaying=false){
                        _handleOnPressed();
                      }
                      if(isPlaying=true){
                        _handleOnPressedPause();
                      }
                    },
                  ),
                ),
                Icon(Icons.fast_forward, color: Colors.black,)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.repeat, color: Colors.black,),
                Icon(Icons.shuffle, color: Colors.black,)
              ],
            ),
          )


        ],
      ),

    );
  }

  void _handleOnPressed() {
    setState(() {
      audioCache.play('disco.mp3');
      isPlaying = true;
      isPlaying ? animationController.forward() : animationController
          .reverse();
    });
  }

  void _handleOnPressedPause() {
    setState(() {
      advancedPlayer.pause();
      isPlaying = false;
      isPlaying ? animationController.reverse() : animationController
          .forward();
    });
  }


}
