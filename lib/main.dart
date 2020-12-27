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

  final myFocusNode = FocusNode();

  String name;

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("直書きもできる"),
      ),
      body: Container(
        width: double.infinity, //幅すべて
        child: Column(
          children: [
            TextField(
              autofocus: true, //このアプリを開いたら自動でキーボードが出る
              decoration: InputDecoration(
                hintText: '名前を入力してください',
              ),
              onChanged: (text) {
                name = text;
                print("First text field: $text");
              },
            ),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: '趣味を入力',
              ),
              focusNode: myFocusNode,
            ),
            RaisedButton(
              child: Text('サインアップ'),
              onPressed: () {
                // //ここにフォーカスするためのコード
                // myFocusNode.requestFocus();
                print(myController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
