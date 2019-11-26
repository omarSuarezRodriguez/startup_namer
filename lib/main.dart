import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'InkWell Demo';

    return MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(child: MyButton()),
            Center(child: MyButton()),
            Center(child: MyButton()),
          ],
        ),
      )
//      Center(child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // El InkWell envuelve nuestro widget flat button personalizado
    return InkWell(
      // Cuando el usuario pulsa el button, muestra un snackbar
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Texto'),
        ));
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Text('Flat Button'),
      ),
    );
  }
}

//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Retrieve Text Input',
//      home: MyCustomForm(),
//    );
//  }
//}
//
//// Define un widget de formulario personalizado
//class MyCustomForm extends StatefulWidget {
//  @override
//  _MyCustomFormState createState() => _MyCustomFormState();
//}
//
//// Define la clase State correspondiente. Esta clase contendrá los datos relacionados con
//// nuestro formulario.
//class _MyCustomFormState extends State<MyCustomForm> {
//  // Crea un controlador de texto. Lo usaremos para recuperar el valor actual
//  // del TextField!
//  final myController = TextEditingController();
//
//  @override
//  void dispose() {
//    // Limpia el controlador cuando el Widget se descarte
//    myController.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Retrieve Text Input'),
//      ),
//      body: Padding(
//        padding: const EdgeInsets.all(16.0),
//        child: TextField(
//          controller: myController,
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        // Cuando el usuario pulsa el botón, muestra un diálogo de alerta con el
//        // texto que el usuario ha digitado en nuestro campo de texto.
//        onPressed: () {
//          return showDialog(
//            context: context,
//            builder: (context) {
//              return AlertDialog(
//                // Recupera el texto que el usuario ha digitado utilizando nuestro
//                // TextEditingController
//                content: Text(myController.text),
//              );
//            },
//          );
//        },
//        tooltip: 'Show me the value!',
//        child: Icon(Icons.text_fields),
//      ),
//    );
//  }
//}

////Código para AlertDialog, el método
//
//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
///// This Widget is the main application widget.
//class MyApp extends StatelessWidget {
//  static const String _title = 'Flutter Code Sample';
//
//
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: _title,
//      home: Scaffold(
//        appBar: AppBar(title: const Text(_title)),
//        body: MyStatelessWidget(),
//      ),
//    );
//  }
//}
//
///// This is the stateless widget that the main application instantiates.
//class MyStatelessWidget extends StatelessWidget {
//  MyStatelessWidget({Key key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Column(
//        mainAxisSize: MainAxisSize.min,
//        children: <Widget>[
//          const RaisedButton(
//            onPressed: null,
//            child: Text('Disabled Button', style: TextStyle(fontSize: 20)),
//          ),
//          const SizedBox(height: 30),
//          RaisedButton(
//            onPressed: () {
//              // [OK]We can show dialog.
//              showMyDialog(context, "Este mensaje");
//            },
//            child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
//          ),
//          const SizedBox(height: 30),
//          RaisedButton(
//            onPressed: () {},
//            textColor: Colors.white,
//            padding: const EdgeInsets.all(0.0),
//            child: Container(
//              decoration: const BoxDecoration(
//                gradient: LinearGradient(
//                  colors: <Color>[
//                    Color(0xFF0D47A1),
//                    Color(0xFF1976D2),
//                    Color(0xFF42A5F5),
//                  ],
//                ),
//              ),
//              padding: const EdgeInsets.all(10.0),
//              child:
//              const Text('Gradient Button', style: TextStyle(fontSize: 20)),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//
//  void showMyDialog(BuildContext context, String texto) {
//    showDialog<bool>(
//      context: context,
//      builder: (BuildContext context) {
//        return AlertDialog(
//          content: Text(
//            texto,
//          ),
//          actions: <Widget>[
//            FlatButton(
//              child: const Text('OK'),
//              onPressed: () {
//                Navigator.of(context).pop(true);
//              },
//            ),
//          ],
//        );
//      },
//    );
//  }
//
//
//}

////Uso de layouts en flutter
//
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
//            ],
//          ),
//        ),
//        floatingActionButton: FloatingActionButton(
//          // Cuando el usuario pulsa el botón, muestra un diálogo de alerta con el
//          // texto que el usuario ha digitado en nuestro campo de texto.
//          onPressed: () {
//            return showDialog(
//              context: context,
//              builder: (context) {
//                return AlertDialog(
//                  // Recupera el texto que el usuario ha digitado utilizando nuestro
//                  // TextEditingController
//                  content: Text("Hola mundo", style: descTextStyle),
//                );
//              },
//            );
//          },
//          tooltip: 'Show me the value!',
//          child: Icon(Icons.text_fields),
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
