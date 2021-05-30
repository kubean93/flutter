//import 'dart:html';

import 'package:app_flutter_1/Screens/wrapper.dart';
import 'package:app_flutter_1/models/user.dart';
import 'package:app_flutter_1/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

import 'Screens/screen1.dart';
import 'Screens/screen2.dart';
import 'shared/style.dart';

void main() {
  runApp(FadeAppTest());
}

const LocationsRoute = '/';
const LocationDetailRoute = "/location_detail";

class FadeAppTest extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        onGenerateRoute: _routes(),
        debugShowCheckedModeBanner: false,
        theme: _themeData(),
        home: Wrapper(),
      ),
    );
  }
}

RouteFactory _routes() {
  return (settings) {
    final Map<String, dynamic> arguments = settings.arguments;
    Widget screen;
    switch (settings.name) {
      case LocationsRoute:
        screen = Location();
        break;
      case LocationDetailRoute:
        screen = LocationDetail(arguments['id']);
        break;
      default:
        return null;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}

ThemeData _themeData() {
  return ThemeData(
    appBarTheme: AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
    textTheme: TextTheme(headline6: TitleTextStyle, bodyText2: BodyTextStyle),
  );
}

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  // Default placeholder text.
  String textToShow = 'Test';
  final wordPair = WordPair.random();

  void _updateText() {
    setState(() {
      // Update the text.
      textToShow = wordPair.asPascalCase;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Center(child: Text(textToShow)),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: Icon(Icons.create),
      ),
    );
  }
}

class SampleApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage1 extends StatefulWidget {
  SampleAppPage1({Key key}) : super(key: key);

  @override
  _SampleAppPageState1 createState() => _SampleAppPageState1();
}

class _SampleAppPageState1 extends State<SampleAppPage> {
  // Default value for toggle
  bool toggle = true;
  String str = "Toggle Two";

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  void _updateText() {
    setState(() {
      str = "Toggle Two 2";
    });
  }

  _getToggleChild() {
    if (toggle) {
      return Text('Toggle One');
    } else {
      return CupertinoButton(
        onPressed: _updateText,
        child: Text(str),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(left: 20.0, right: 30.0),
          ),
          onPressed: () {},
          child: Text('Hello'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
