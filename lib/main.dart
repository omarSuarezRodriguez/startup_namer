

















//Uso de layouts en flutter

//import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//
////Mi primera app en flutter
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final descTextStyle = TextStyle(
//      color: Colors.black,
//      fontWeight: FontWeight.w800,
//      fontFamily: 'Roboto',
//      letterSpacing: 0.5,
//      fontSize: 18,
//      height: 2,
//    );
//
//    final wordPair = WordPair.random();
//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Welcome to Flutter'),
//        ),
//        body: Container(
//          //Contenedor
//          padding: EdgeInsets.all(20), //Le da este padding a todo el widget
//          child: ListView(
//            //Widget hijo
//            children: <Widget>[
//              //Hijos de ListView
//              Container(
//                child: Text("Hola mundo",
//                    textAlign: TextAlign.center, style: descTextStyle),
//              ),
//              Container(
//                child: Text("Hola mundo",
//                    textAlign: TextAlign.right, style: descTextStyle),
//              ),
//              Text("Hola mundo", style: descTextStyle),
//              Text("Hola mundo", style: descTextStyle),
//              Text("Hola mundo", style: descTextStyle),
//              RaisedButton(
//                onPressed: () {},
//                child: const Text('Enabled Button',
//                    style: TextStyle(fontSize: 20)),
//              ),
//
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

//import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//
////Mi primera app en flutter
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final wordPair = WordPair.random();
//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Welcome to Flutter'),
//        ),
//        body: Center(
//          child: Text(wordPair.asPascalCase),
//        ),
//      ),
//    );
//  }
//}
