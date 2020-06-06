
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learninge/Models/posts_model.dart';
import 'package:learninge/appModules/player_learning/player.dart';
import 'package:learninge/networkCalls/http_service.dart';
import 'package:learninge/utilities/size_config.dart';

void main() => runApp(MyApp());

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFa),
  },
);
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(

              theme: ThemeData(
                primarySwatch:white,              ),
              debugShowCheckedModeBanner: false,
              title: 'Player List',
              home: PlayerList(),
            );
          },
        );
      },
    );
  }
}

class PlayerList extends StatefulWidget {
  PlayerList({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<PlayerList> with SingleTickerProviderStateMixin{

  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //backgroundColor: Colors.white, // status bar color
        //brightness: Brightness.light, //
        automaticallyImplyLeading: true,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios, color: Colors.black87,size: 20,),
          onPressed:() => Navigator.pop(context, false)),
      title: Text("E-Learning Player List" ,style: TextStyle(
          fontFamily: 'Nunito-Bold',
          letterSpacing: 1.0,
          fontSize: 16 ,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
    ),

       body:FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (Post post) =>
                        ListTile(
                          leading:ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset("assets/notimetodiebe.jpg", fit: BoxFit.cover, height: 41 , width: 41,),
                          ),
                  title: Text(/*post.title*/"Lession Title", style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  //subtitle: Text("${post.userId}"),
                  subtitle: Text('Lession description',style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 13,
                    color: Colors.black,
                  ),),
                          trailing: Wrap(
                            spacing: 05, // space between two icons
                            children: <Widget>[
                              Text('4:50 min', style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              color: Colors.black
                          ),),
                              SizedBox(width: 20.0,),
                              Icon(Icons.play_circle_outline, color: Colors.black,)
                            ],
                            //trailing: Text('Status : ' + movie.year, style: TextStyle(color: Colors.green,),
                          ),                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Player(
                        post: post,
                      ),
                    ),
                  ),
                ),
              )
                  .toList(),
            );

          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}