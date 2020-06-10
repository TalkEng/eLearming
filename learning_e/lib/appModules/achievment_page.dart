import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Achievement Page',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Achievement'),
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

  String _level_one_display='50';
  String _level_two_display='100';
  static String _level_one_input='40';
  static String _level_two_input='40';

  static int _asssign_one=int.parse(_level_one_input);
  double _assign_level_one=2*(_asssign_one)/100;

  static int _asssign_two=int.parse(_level_two_input);
  double _assign_level_two=(_asssign_two)/100;



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),
            onPressed:() => Navigator.pop(context, false)),
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 0,right: 0,
            bottom: 05.0, top: 05.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              CircularPercentIndicator(
                progressColor: Colors.blue,
                percent: _assign_level_two,
                animation: true,
                radius: 130.0,
                lineWidth: 15.0,
                circularStrokeCap: CircularStrokeCap.round,
                center: Text("XP- "+_level_two_input+'/'+_level_two_display,
                  style:
                  new TextStyle(color:Colors.grey,fontWeight: FontWeight.bold, fontSize: 14.0),),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Complete your profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " +20XP",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Make first audio call",
                    textAlign: TextAlign.center,
                    style: TextStyle(color:Colors.greenAccent,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "   +30XP",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(color:Colors.greenAccent,fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Make first video call",
                    textAlign: TextAlign.center,
                    style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "   +40XP",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Share with your friend",
                    textAlign: TextAlign.center,
                    style: TextStyle(color:Colors.greenAccent,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "+05XP",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(color:Colors.greenAccent,fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              ),

              new Container(
                height: 550,
                color: Colors.transparent,
                child: new Container(
                    decoration: new BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(50.0),
                          topRight: const Radius.circular(50.0),
                        )
                    ),

                    child: new Column(

                      children: <Widget>[

                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 25, 0, 20),
                          child:new Align(
                            alignment: Alignment.topLeft,
                            child: new Text(
                              'Top Rankers',
                              style: TextStyle(
                                  color:Colors.grey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),),










                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              /* Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 20.0),
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                        ],
                      )),*/
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: new Stack(fit: StackFit.loose, children: <Widget>[
                                  new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Container(
                                        width: 90.0,
                                        height: 90.0,
                                        decoration: new BoxDecoration(
                                          //color: const Color(0xff7c94b6),
                                          image: new DecorationImage(
                                            image: new ExactAssetImage(
                                                'images/new_avatar.png'),
                                            //image: new NetworkImage('https://imgur.com/7tZTNiz.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                                          border: new Border.all(
                                            color: Colors.grey[300],
                                            width: 5.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 0.0, right: 0.0,left: 0,bottom: 50),
                                    child: new Container(
                                        width: 30.00,
                                        height: 30.00,
                                        decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                            image: new ExactAssetImage('images/icons8-crown-100.png'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        )),
                                  ),
                                ]),
                              ),




                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: new Stack(fit: StackFit.loose, children: <Widget>[
                                  new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Container(
                                        width: 110.0,
                                        height: 110.0,
                                        decoration: new BoxDecoration(
                                          color: Colors.black12,
                                          image: new DecorationImage(
                                            /* image: new ExactAssetImage(
                                      'images/avatar.png'),*/
                                            image: new NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                                          border: new Border.all(
                                            color: Colors.grey[300],
                                            width: 6.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 0.0, right: 0.0,left: 0,bottom: 50),
                                    child: new Container(
                                        width: 35.00,
                                        height: 35.00,
                                        decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                            image: new ExactAssetImage('images/icons8-crown-64.png'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        )),
                                  ),
                                ]),
                              ),






                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: new Stack(fit: StackFit.loose, children: <Widget>[
                                  new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Container(
                                        width: 80.0,
                                        height: 80.0,
                                        decoration: new BoxDecoration(
                                          //color: const Color(0xff7c94b6),
                                          image: new DecorationImage(
                                            image: new ExactAssetImage(
                                                'images/boy.jpg'),
                                            //image: new NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                                          border: new Border.all(
                                            color: Colors.grey[300],
                                            width: 4.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 0.0, right: 0.0,left: 0,bottom: 50),
                                    child: new Container(
                                        width: 20.00,
                                        height: 20.00,
                                        decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                            image: new ExactAssetImage('images/icons8-crown-96.png'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        )),
                                  ),
                                ]),
                              ),
                            ]
                        ),









                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
                          child:new Align(
                            alignment: Alignment.topLeft,

                            child: new Text(
                              'Daily Achievements',

                              style: TextStyle(
                                  color:Colors.grey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),),

                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 05, 0, 0),
                          child:new Stepper(
                            //type: StepperType.horizontal,
                            currentStep: 3,
                            controlsBuilder:
                                (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                              return Row(
                                /* children: <Widget>[
                          FlatButton(
                            onPressed: onStepContinue,
                            //child: const Text('NEXT'),
                          ),
                          FlatButton(
                            onPressed: onStepCancel,
                            //child: const Text('CANCEL'),
                          ),
                        ],*/
                              );
                            },

                            steps: [
                              Step(
                                  title: Text("Today's activity"),
                                  subtitle: Text("Done"),
                                  content: SizedBox(
                                    width: 0.0,
                                    height: 0.0,
                                  ),
                                  state: StepState.complete,
                                  isActive: true),
                              Step(
                                  title: Text("5 minute free call"),
                                  subtitle: Text("Done calling"),
                                  content: SizedBox(
                                    width: 0.0,
                                    height: 0.0,
                                  ),
                                  state: StepState.complete,
                                  isActive: true),
                              Step(
                                  title: Text("Complete 2 shares"),
                                  subtitle: Text("1 sharing is still remaining"),
                                  content: SizedBox(
                                    width: 0.0,
                                    height: 0.0,
                                  ),
                                  state: StepState.complete ,
                                  isActive: false),
                              Step(
                                  title: Text("10 minutes voice call"),
                                  subtitle: Text("Do the calling"),
                                  content: SizedBox(
                                    width: 0.0,
                                    height: 00.0,
                                  ),
                                  state: StepState.disabled ,
                                  isActive: false),
                            ],
                            //type: StepperType.horizontal,
                          ),
                        ),

                      ],
                    )




                ),
              ),




            ],//widget
          ),
        ),
      ),
    );
  }
}
