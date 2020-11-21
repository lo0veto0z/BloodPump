import 'package:blood_pump/BottomNavigationController.dart';
import 'package:blood_pump/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
//import package file


import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';



const List<String> labels = [
  'Rotate',
  'Fade',
  'Typer',
  'Typewriter',
  'Scale',
  'Colorize',
  'TextLiquidFill',
  'Wavy Text'
];

class PostScreen extends StatefulWidget {
  /// This widget is the root of your application.
  ///
  const PostScreen({Key key}) : super(key: key);
  @override
  PostScreenState createState() {
    return PostScreenState();
  }
}

class PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Text Kit',
      debugShowCheckedModeBanner: false,

      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  // final String title;

  // MyHomePage({
  //   Key key,
  //   this.title,
  // }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _textAnimationKit = <Widget>[
    // ListView(
    //   scrollDirection: Axis.horizontal,
    //   children: <Widget>[
    //     Row(
    //       mainAxisSize: MainAxisSize.min,
    //       children: <Widget>[
    //         SizedBox(
    //           width: 20.0,
    //           height: 100.0,
    //         ),
    //         Text(
    //           'Be',
    //           style: TextStyle(fontSize: 43.0),
    //         ),
    //         SizedBox(
    //           width: 20.0,
    //           height: 100.0,
    //         ),
    //         RotateAnimatedTextKit(
    //           onTap: () {
    //             print('Tap Event');
    //           },
    //           isRepeatingAnimation: true,
    //           totalRepeatCount: 10,
    //           text: ['AWESOME', 'OPTIMISTIC', 'DIFFERENT'],
    //           // alignment: Alignment(1.0, 0.5),
    //           textStyle: TextStyle(fontSize: 40.0, fontFamily: 'Horizon'),
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
    // FadeAnimatedTextKit(
    //   onTap: () {
    //     print('Tap Event');
    //   },
    //   text: ['do IT!', 'do it RIGHT!!', 'do it RIGHT NOW!!!'],
    //   textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    // ),
    // SizedBox(
    //   width: 250.0,
    //   child: TyperAnimatedTextKit(
    //     onTap: () {
    //       print('Tap Event');
    //     },
    //     text: [
    //       'It is not enough to do your best,',
    //       'you must know what to do,',
    //       'and then do your best',
    //       '- W.Edwards Deming',
    //     ],
    //     textStyle: TextStyle(fontSize: 30.0, fontFamily: 'Bobbers'),
    //   ),
    // ),
    // SizedBox(
    //   width: 250.0,
    //   child: TypewriterAnimatedTextKit(
    //     onTap: () {
    //       print('Tap Event');
    //     },
    //     text: [
    //       'Discipline is the best tool',
    //       'Design first, then code',
    //       'Do not patch bugs out, rewrite them',
    //       'Do not test bugs out, design them out',
    //     ],
    //     textStyle: TextStyle(fontSize: 30.0, fontFamily: 'Agne'),
    //   ),
    // ),
    // ScaleAnimatedTextKit(
    //   onTap: () {
    //     print('Tap Event');
    //   },
    //   text: ['Think', 'Build', 'Ship'],
    //   textStyle: TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
    // ),
    //
    // /// colors.length >= 2
    // ColorizeAnimatedTextKit(
    //   onTap: () {
    //     print('Tap Event');
    //   },
    //   text: [
    //     'Larry Page',
    //     'Bill Gates',
    //     'Steve Jobs',
    //   ],
    //   textStyle: TextStyle(fontSize: 50.0, fontFamily: 'Horizon'),
    //   colors: [
    //     Colors.purple,
    //     Colors.blue,
    //     Colors.yellow,
    //     Colors.red,
    //   ],
    // ),

    Expanded(
      child: Center(
        child: TextLiquidFill(
          text: 'DONATE BLOOD',
          waveColor: Colors.redAccent,
          boxBackgroundColor: Colors.white,
          textStyle: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          // boxHeight: 300,
        ),
      ),
    ),

    // WavyAnimatedTextKit(
    //   textStyle: TextStyle(fontSize: 20),
    //   text: [
    //     'Hello World',
    //     'Look at the waves',
    //     'They look so Amazing',
    //   ],
    // ),
  ];


  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(
            labels[_index],
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            child: Center(child: _textAnimationKit[_index]),

          ),
          Expanded(
            child: Container(),
          ),

        ],
      ),
    );
  }
}