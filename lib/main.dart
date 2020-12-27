import 'package:flutter/material.dart';
import 'package:flutter_demo/next_page.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'KBOYのFlutter大学をやる'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = '次へ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("直書きもできる"),
      ),
      body: Container(
        width: double.infinity, //幅すべて
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //中央寄せ
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Text(
                'Sakurai',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.green,
                  backgroundColor: Colors.lightGreenAccent,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            DefaultTextStyle( //これの下に入れるtextは全部同じstyleになる
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                backgroundColor: Colors.red,
              ),
              child: Column(
                children: [
                  Text(
                    'Takumi',
                  ),
                  Text(
                    'Takumin',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
