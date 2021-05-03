import 'package:anpi/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),


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
  final items = ['れんと　1' ,'りゅうと　２','ひでみち　３','れんりゅうひで'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('大橋英路の安否確認アプリ!!!'),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share),
        ],

      ),
      body: Container(
        width: double.infinity,
        child:ListView(
          // This next line does the trick.
          scrollDirection: Axis.vertical,
          children: <Widget>[

            Container(
              width: 160.0,
              height: 80,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              height: 80,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              height: 80,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              height: 80,
              color: Colors.orange,
            ),
          ],
        )
      ),
    );
  }
}
